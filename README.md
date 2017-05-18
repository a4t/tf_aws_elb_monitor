# tf_aws_elb_monitor

AWS ELB Monitor terraform module

## Module Input Variables

- `elb_name` (String)
  - elb name (Required)

- `thresholds_request_count` (Map)
  - request count range (Require min, max)

- `thresholds_surge_queue_length` (Integer)
  - surge queue (default = 1)

- `thresholds_latency` (Integer)
  - Request latency (default = 100)

- `thresholds_healthy_host_count` (Integer)
  - Min threshold healthy host count (default = 1)

- `thresholds_elb_5xx` (Integer)
  -  elb 5xx count (default = 1)

- `thresholds_backend_connection_errors` (Integer)
  - backend connection error count (default = 10)

- `thresholds_backend_5xx` (Integer)
  - backend 5xx count (default = 1)

- `thresholds_unhealthy_host_count` (Integer)
  - Max threshold unhealthy host count (default = 1)

- `alarm_actions` (List)
  - list of alarm actions (default = [])

## Usage

```hcl
module my_elb {
  source = "github.com/a4t/tf_aws_elb_monitor"
  elb_name = "my-elb"
  thresholds_request_count = {
    min = 0
    max = 500
  }
}
```
