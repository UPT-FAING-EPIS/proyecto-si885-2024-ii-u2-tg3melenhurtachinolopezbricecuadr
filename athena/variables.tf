variable "bucket_name" {
  description = "Nombre del bucket S3"
  default     = "aws-glue-proyect"
}

variable "database_name" {
  description = "Nombre de la base de datos Glue"
  default     = "segunda_matricula_data"
}

variable "crawler_name" {
  description = "Nombre del Crawler de Glue"
  default     = "segunda_matricula_crawler"
}

variable "athena_results_bucket" {
  description = "Nombre del bucket de resultados de Athena"
  default     = "athena-results-proyect"
}

