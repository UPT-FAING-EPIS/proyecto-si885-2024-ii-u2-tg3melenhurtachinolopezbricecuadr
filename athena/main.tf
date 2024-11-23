# Recurso para el bucket de S3 ya existente
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

# Recurso para actualizar el archivo en el bucket S3
resource "aws_s3_object" "dataset" {
  bucket       = aws_s3_bucket.bucket.bucket
  key          = "data/input/dataset.csv"
  source       = "dataset.csv"  # Asegúrate de que esta ruta sea correcta
  acl          = "private"
  content_type = "text/csv"
  depends_on   = [aws_s3_bucket.bucket]
  etag = filemd5("dataset.csv")  # Asegúrate de que se calcule el hash


  # Se asegura de que se actualice el archivo incluso si no cambia su ETag
  lifecycle {
    ignore_changes = [etag]  # Ignora el ETag para forzar la actualización
  }
}

# Recurso para el Glue Crawler que usa una base de datos ya existente
resource "aws_glue_crawler" "crawler" {
  name          = var.crawler_name
  role          = "arn:aws:iam::905418255636:role/LabRole"
  database_name = var.database_name  # Referencia la base de datos existente

  s3_target {
    path = "s3://${aws_s3_bucket.bucket.bucket}/data/input/"
  }

  lifecycle {
    prevent_destroy = true  # Evita la destrucción del crawler
  }
}

# Recurso para la consulta de Athena (ya existente)
resource "aws_athena_named_query" "athena_query" {
  name      = "example_query"
  database  = var.database_name
  query     = "SELECT * FROM ${var.database_name}.input LIMIT 200;"  # Ajusta la consulta si es necesario
  workgroup = "primary"
}
