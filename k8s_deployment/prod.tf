resource "aws_ssm_parameter" "prod_config" {
  name        = "/k8s_deployment/prod/config"
  description = "Configuration parameter for prod environment"
  type        = "SecureString"
  value       = jsonencode({
    environment = "prod"
    timestamp   = timestamp()
  })

  tags = {
    Environment = "prod"
    ManagedBy   = "terraform"
  }
}