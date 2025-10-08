resource "aws_ssm_parameter" "shared_config" {
  name        = "/k8s_deployment/shared/config"
  description = "Configuration parameter for shared environment"
  type        = "SecureString"
  value       = jsonencode({
    environment = "shared"
    timestamp   = timestamp()
  })

  tags = {
    Environment = "shared"
    ManagedBy   = "terraform"
  }
}
