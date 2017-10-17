resource "aws_cloudwatch_metric_alarm" "unhealthy_hosts" {
  alarm_name          = "awselb-${var.elb_name}-Unhealthy-Hosts"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "UnHealthyHostCount"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Minimum"
  period            = "60"
  threshold         = "${var.thresholds_unhealthy_host_count}"
  alarm_description = "${var.elb_name} UnHealthy Host Count"
  alarm_actions     = "${var.alarm_actions}"
}
