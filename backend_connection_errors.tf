resource "aws_cloudwatch_metric_alarm" "backend_connection_errors" {
  alarm_name          = "awselb-${var.elb_name}-Backend-connection-errors"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "BackendConnectionErrors"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Sum"
  period            = "60"
  threshold         = "${var.thresholds_backend_connection_errors}"
  alarm_description = "${var.elb_name} Backend connection errors"
  alarm_actions     = "${var.alarm_actions}"
}

