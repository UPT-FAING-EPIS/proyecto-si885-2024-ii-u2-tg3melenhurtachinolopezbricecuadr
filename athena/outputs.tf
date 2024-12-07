output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "database_name" {
  value = var.database_name
}

output "crawler_name" {
  value = aws_glue_crawler.crawler.name
}