resource "aws_cloudwatch_metric_alarm" "backend_5xx" {
  alarm_name          = "awselb-${var.elb_name}-Backend-5xx"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "HTTPCode_Backend_5XX"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Sum"
  period            = "60"
  threshold         = "${var.thresholds_backend_5xx}"
  alarm_description = "${var.elb_name} Backend 5xx"
  alarm_actions     = "${var.alarm_actions}"
}

