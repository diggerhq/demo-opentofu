resource "aws_ssm_parameter" "dev_config" {
  name        = "/k8s_deployment/dev/config"
  description = "Configuration parameter for dev environment"
  type        = "SecureString"
  value       = jsonencode({
    environment = "dev"
    timestamp   = timestamp()
  })

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}












