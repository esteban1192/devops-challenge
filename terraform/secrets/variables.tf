variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "redis_password" {
  description = "Redis password for the application"
  type        = string
  sensitive   = true
}
