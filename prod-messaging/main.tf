# Terraform configuration for a simple messaging service using AWS SNS

provider "aws" {
  region = "us-east-1"
}

# Create an SNS topic
resource "aws_sns_topic" "my_topic" {
  name = "my-messaging-topic"
}

# Create an SNS subscription (e.g., email)
resource "aws_sns_topic_subscription" "my_subscription" {
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = "example@example.com"  # Replace with your email
}

# Output the SNS topic ARN
output "topic_arn" {
  value = aws_sns_topic.my_topic.arn
}
