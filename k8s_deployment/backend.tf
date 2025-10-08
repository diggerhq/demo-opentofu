terraform {
  backend "s3" {
    # Configuration will come from tf_backend.tfbackend
    # When using workspaces, state files will be stored at:
    # - env:/shared/terraform.tfstate
    # - env:/dev/terraform.tfstate
    # - env:/qa/terraform.tfstate
    # - env:/prod/terraform.tfstate
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}