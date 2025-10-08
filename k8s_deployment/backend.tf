terraform {
  backend "s3" {
    # Configuration will come from tf_backend.tfbackend
    # When using workspaces, state files will be stored at:
    # - env:/shared/terraform.tfstate
    # - env:/dev/terraform.tfstate
    # - env:/qa/terraform.tfstate
    # - env:/prod/terraform.tfstate
  }
}
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}