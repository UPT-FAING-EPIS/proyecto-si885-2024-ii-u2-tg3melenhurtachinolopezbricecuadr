terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "UPT_InteligenciaNegocios"
    workspaces {
      name = "learn-terraform-migrate"
    }
  }
}

# Variable para la longitud del nombre
variable "name_length" {
  description = "Longitud del nombre"
  type        = number
  default     = 5
}



# Recurso para el bucket de S3 existente
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

# Recurso para cargar el archivo dataset.csv en el bucket S3
resource "aws_s3_object" "upload_dataset" {
  bucket       = aws_s3_bucket.bucket.bucket
  key          = "data/input/dataset.csv"
  source       = "dataset.csv"  # Ruta al archivo local
  acl          = "private"
  content_type = "text/csv"

  lifecycle {
    ignore_changes = [etag]  # Ignorar cambios en el ETag para evitar recreación innecesaria
  }
}

# Recurso para el Glue Crawler
resource "aws_glue_crawler" "crawler" {
  name          = var.crawler_name
  role          = "arn:aws:iam::905418255636:role/LabRole"
  database_name = var.database_name

  s3_target {
    path = "s3://${aws_s3_bucket.bucket.bucket}/data/input/"
  }

  lifecycle {
    prevent_destroy = true  # Evitar la destrucción accidental del crawler
  }
}

# Recurso para la consulta de Athena
resource "aws_athena_named_query" "athena_query" {
  name      = "example_query"
  database  = var.database_name
  query     = "SELECT * FROM ${var.database_name}.input LIMIT 200;"
  workgroup = "primary"
}
