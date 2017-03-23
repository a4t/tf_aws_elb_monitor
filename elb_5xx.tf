resource "aws_cloudwatch_metric_alarm" "elb_5xx" {
  alarm_name          = "awselb-${var.elb_name}-ELB-5xx"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "HTTPCode_ELB_5XX"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Sum"
  period            = "60"
  threshold         = "10"
  alarm_description = "${var.elb_name} ELB 5xx"
  alarm_actions     = "${var.alarm_actions}"
}
