resource "aws_cloudwatch_metric_alarm" "request_count_min" {
  alarm_name          = "awselb-${var.elb_name}-Request-Count-Min"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "RequestCount"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Sum"
  period            = "60"
  threshold         = "${var.thresholds_request_count["min"]}"
  alarm_description = "${var.elb_name} Request Count Min"
  alarm_actions     = "${var.alarm_actions}"
}

resource "aws_cloudwatch_metric_alarm" "request_count_max" {
  alarm_name          = "awselb-${var.elb_name}-Request-Count-Max"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "RequestCount"
  namespace           = "AWS/ELB"

  dimensions {
    "LoadBalancerName" = "${var.elb_name}"
  }

  statistic         = "Sum"
  period            = "60"
  threshold         = "${var.thresholds_request_count["max"]}"
  alarm_description = "${var.elb_name} Request Count Max"
  alarm_actions     = "${var.alarm_actions}"
}
