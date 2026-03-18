terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
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
