resource "aws_cloudwatch_metric_alarm" "request_count" {
  alarm_name          = "awselb-${var.elb_name}-Request-Count"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "RequestCount"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Sum"
  period            = "60"
  threshold         = "${var.request_count_threshold}"
  alarm_description = "${var.elb_name} Request Count"
  alarm_actions     = "${var.alarm_actions}"
}
