resource "aws_cloudwatch_metric_alarm" "surge_queue_length" {
  alarm_name          = "awselb-${var.elb_name}-Surge-Queue-Length"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "SurgeQueueLength"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Sum"
  period            = "60"
  threshold         = "${var.thresholds_surge_queue_length}"
  alarm_description = "${var.elb_name} Surge Queue Length"
  alarm_actions     = "${var.alarm_actions}"
}
