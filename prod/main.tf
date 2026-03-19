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

resource "null_resource" "load_balancer" {
  triggers = {
    environment = "prod"
    health_check_path = "/healthz"
    ssl_cert = "arn:aws:acm:us-east-1:123456:certificate/abc-123"
  }
}

resource "null_resource" "cache_layer" {
  triggers = {
    engine = "redis"
    node_type = "large"
    multi_az = "true"
  }
}

resource "null_resource" "waf_rules" {
  triggers = {
    rate_limit = "1000"
    geo_block = "true"
  }
}
