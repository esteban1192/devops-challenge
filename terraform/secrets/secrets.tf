resource "aws_secretsmanager_secret" "redis_password" {
  name                    = "devops-challenge/${terraform.workspace}/redis-password"
  description             = "Redis password for devops-challenge ${terraform.workspace} environment"
  recovery_window_in_days = terraform.workspace == "prod" ? 30 : 0
}

resource "aws_secretsmanager_secret_version" "redis_password" {
  secret_id = aws_secretsmanager_secret.redis_password.id
  secret_string = jsonencode({
    password = var.redis_password
  })
}
