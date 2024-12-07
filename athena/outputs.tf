output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "athena_results_bucket" {
  value = aws_s3_bucket.athena_results.bucket
}

output "glue_database_name" {
  value = aws_glue_catalog_database.glue_database.name
}

output "crawler_name" {
  value = aws_glue_crawler.crawler.name
}

output "glue_role" {
  value = aws_iam_role.glue_role.arn
}

