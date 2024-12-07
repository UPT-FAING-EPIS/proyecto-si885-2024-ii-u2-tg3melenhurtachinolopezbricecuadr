# Recurso para crear el bucket S3
resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true  # Permite eliminar el bucket y su contenido durante la destrucción
}

# Recurso para subir el archivo inicial al bucket S3
resource "aws_s3_object" "dataset" {
  bucket       = aws_s3_bucket.bucket.id
  key          = "data/input/dataset.csv"
  source       = "dataset.csv"  # Asegúrate de que este archivo esté en tu directorio de trabajo
  acl          = "private"
  content_type = "text/csv"
  etag         = filemd5("dataset.csv")

  lifecycle {
    ignore_changes = [etag]  # Evita recrear el recurso si solo cambia el hash
  }
}

# Recurso para crear una base de datos Glue
resource "aws_glue_catalog_database" "glue_database" {
  name = var.database_name
}

# Recurso para crear un Glue Crawler
resource "aws_glue_crawler" "crawler" {
  name          = var.crawler_name
  role          = aws_iam_role.glue_role.arn  # Asociar un rol para el crawler
  database_name = aws_glue_catalog_database.glue_database.name

  s3_target {
    path = "s3://${aws_s3_bucket.bucket.bucket}/data/input/"
  }
}

# Recurso para crear un rol para Glue
resource "aws_iam_role" "glue_role" {
  name               = "${var.crawler_name}_role"
  assume_role_policy = data.aws_iam_policy_document.glue_trust.json
}

# Política de confianza para el rol Glue
data "aws_iam_policy_document" "glue_trust" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["glue.amazonaws.com"]
    }
  }
}

# Política administrada para el rol Glue
resource "aws_iam_role_policy_attachment" "glue_policy" {
  role       = aws_iam_role.glue_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
}

# Recurso para el bucket de resultados de Athena
resource "aws_s3_bucket" "athena_results" {
  bucket        = var.athena_results_bucket
  acl           = "private"
  force_destroy = true
}

# Recurso para configurar Athena
resource "aws_athena_named_query" "athena_query" {
  name      = "example_query"
  database  = aws_glue_catalog_database.glue_database.name
  query     = "SELECT * FROM ${aws_glue_catalog_database.glue_database.name}.input LIMIT 200;"
  workgroup = "primary"
}