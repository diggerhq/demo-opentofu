

resource "null_resource" "monitoring_alerts" {
  triggers = {
    environment = "dev"
    alert_email = "team@example.com"
    slack_channel = "#dev-alerts"
  }
}
