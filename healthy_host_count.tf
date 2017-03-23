resource "aws_cloudwatch_metric_alarm" "healthy_host_count" {
  alarm_name          = "awselb-${var.elb_name}-Healthy-Host-Count"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "HealthyHostCount"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Maximum"
  period            = "60"
  threshold         = "1"
  alarm_description = "${var.elb_name} Healthy Host Count"
  alarm_actions     = "${var.alarm_actions}"
}
