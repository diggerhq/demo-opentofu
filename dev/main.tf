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

resource "null_resource" "load_balancer" {
  triggers = {
    environment = "dev"
    health_check_path = "/healthz"
  }
}

resource "null_resource" "cache_layer" {
  triggers = {
    engine = "redis"
    node_type = "small"
  }
}

resource "null_resource" "secrets_manager" {}
