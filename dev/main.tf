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
    environment = "dev"
    alert_email = "team@example.com"
  }
}

resource "null_resource" "log_aggregator" {
  triggers = {
    log_level = "info"
  }
}
