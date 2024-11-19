provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token      = var.aws_session_token
}

# Recurso: Base de datos MySQL (RDS)
resource "aws_db_instance" "rds_mysql" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.32"         # Versión compatible más reciente
  instance_class       = "db.t3.micro"   # Clase de instancia compatible
  db_name              = "powerby"
  username             = "admin"
  password             = "password123"
  publicly_accessible  = true
  skip_final_snapshot  = true
  tags = {
    Name = "PowerBy Database"
  }
}

output "db_endpoint" {
  value = aws_db_instance.rds_mysql.endpoint
}
