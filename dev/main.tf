terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }

  backend "s3" {
    bucket = "digger-demo-opentofu-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "api_gateway" {}

resource "null_resource" "monitoring_alerts" {
  triggers = {
    environment = "dev"
    alert_email = "team@example.com"
    slack_channel = "#dev-alerts"
  }
}
