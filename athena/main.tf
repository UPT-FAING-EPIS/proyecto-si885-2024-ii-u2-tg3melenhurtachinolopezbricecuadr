# Proveedor de AWS
provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token      = var.aws_session_token
}

# Recurso: Bucket S3 (ya existente)
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

# Recurso: Archivo en el bucket S3
resource "aws_s3_object" "dataset" {
  bucket       = aws_s3_bucket.bucket.bucket
  key          = "data/input/dataset.csv"
  source       = "dataset.csv"           # Ruta al archivo local
  acl          = "private"
  content_type = "text/csv"
  depends_on   = [aws_s3_bucket.bucket]

  # Se asegura de que el archivo se actualice cuando cambie su contenido
  etag = filemd5("dataset.csv")          # Forzar actualización basado en hash

  # Ignora cambios en el ETag para evitar conflictos con Terraform
  lifecycle {
    ignore_changes = [etag]
  }
}

# Recurso: Glue Crawler (existente)
resource "aws_glue_crawler" "crawler" {
  name          = var.crawler_name
  role          = "arn:aws:iam::905418255636:role/LabRole" # Ajusta el ARN del rol si es necesario
  database_name = var.database_name

  s3_target {
    path = "s3://${aws_s3_bucket.bucket.bucket}/data/input/"
  }

  lifecycle {
    prevent_destroy = true  # Evita la destrucción accidental
  }
}

# Recurso: Ejecutar el Glue Crawler después de actualizar el archivo
resource "null_resource" "start_crawler" {
  triggers = {
    file_hash = filemd5("dataset.csv")  # Ejecuta solo si el archivo cambia
  }

  provisioner "local-exec" {
    command = "aws glue start-crawler --name ${aws_glue_crawler.crawler.name}"
  }

  depends_on = [aws_s3_object.dataset]  # Garantiza que el archivo esté actualizado antes
}

# Recurso: Consulta de Athena (existente)
resource "aws_athena_named_query" "athena_query" {
  name      = "example_query"
  database  = var.database_name
  query     = "SELECT * FROM ${var.database_name}.input LIMIT 200;"  # Ajusta la consulta si es necesario
  workgroup = "primary"
}

# Salida: Endpoint del bucket S3
output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

# Salida: Glue Crawler
output "glue_crawler_name" {
  value = aws_glue_crawler.crawler.name
}
