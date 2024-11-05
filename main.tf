resource "null_resource" "test18" {}

# Generate 100 random strings for parameter names
resource "random_string" "param_names" {
  count   = 100
  length  = 16
  special = false
  upper   = false
}

# Create 100 SSM parameters with random names and values
resource "aws_ssm_parameter" "random_params" {
  count = 100
  name  = "/random-params/${random_string.param_names[count.index].result}"
  type  = "String"
  value = "Parameter value ${count.index + 1}"

  tags = {
    Environment = "test"
    Generated   = "true"
    Index       = count.index
  }

  # Add random lifecycle to prevent accidental deletion
  lifecycle {
    create_before_destroy = true
  }
}

# Output all parameter names for reference
output "parameter_names" {
  value = aws_ssm_parameter.random_params[*].name
}

# Output parameter ARNs
output "parameter_arns" {
  value = aws_ssm_parameter.random_params[*].arn
}

# Add data source to verify parameters
data "aws_ssm_parameters_by_path" "verify" {
  path = "/random-params"
  depends_on = [
    aws_ssm_parameter.random_params
  ]
}

#variable "TEST" {
#  default = "hello"
#}

#variable "SECRET" {
#  default = "shhh"
#}

#output "test" {
#  value = var.TEST
#}

#output "secret" {
#  value = var.SECRET
#}

#output "secret2" {
#  value = var.SECRET
#}



