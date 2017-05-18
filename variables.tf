variable elb_name {}

variable thresholds_request_count {
  default = {}
} # Require min, max

variable thresholds_surge_queue_length {
  default = 1
}

variable thresholds_latency {
  default = 100
}

variable thresholds_healthy_host_count {
  default = 1
}

variable thresholds_elb_5xx {
  default = 1
}

variable thresholds_backend_connection_errors {
  default = 10
}

variable thresholds_backend_5xx {
  default = 1
}

variable thresholds_unhealthy_host_count {
  default = 1
}

variable alarm_actions {
  default = []
}
