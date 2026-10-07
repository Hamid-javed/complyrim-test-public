resource "aws_vpc" "with_flow_logs" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_flow_log" "example" {
  vpc_id          = aws_vpc.with_flow_logs.id
  traffic_type    = "ALL"
  log_destination = "arn:aws:s3:::example-flow-log-bucket"
}
