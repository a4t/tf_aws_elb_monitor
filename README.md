# tf_aws_elb_monitor

AWS ELB Monitor terraform module

## Module Input Variables

- `elb_name` - elb name
- `latency_threshold` - avarage response latency time
- `request_count_threshold` - min request count
  - default = 1
- `alarm_actions` - list of alarm actions

## Usage

```hcl
module my_elb {
  source = "github.com/a4t/tf_aws_elb_monitor"
  elb_name = "my-elb"
  latency_threshold = "0.2"
}
```

