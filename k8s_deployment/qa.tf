resource "aws_ssm_parameter" "qa_config" {
  name        = "/k8s_deployment/qa/config"
  description = "Configuration parameter for qa environment"
  type        = "SecureString"
  value       = jsonencode({
    environment = "qa"
    timestamp   = timestamp()
  })

  tags = {
    Environment = "qa"
    ManagedBy   = "terraform"
  }
}
