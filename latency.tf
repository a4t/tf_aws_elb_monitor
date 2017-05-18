resource "aws_cloudwatch_metric_alarm" "high_average_latency" {
  alarm_name          = "awselb-${var.elb_name}-High-Average-Latency"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "Latency"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Average"
  period            = "60"
  threshold         = "${var.thresholds_latency}"
  alarm_description = "${var.elb_name} High Average Latency"
  alarm_actions     = "${var.alarm_actions}"
}
