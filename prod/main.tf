terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }

  backend "s3" {
    bucket = "digger-demo-opentofu-state"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "api_gateway" {}

resource "null_resource" "monitoring_alerts" {
  triggers = {
    environment = "prod"
    alert_email = "oncall@example.com"
    pagerduty   = "true"
  }
}
