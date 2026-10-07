resource "aws_mq_broker" "good" {
  broker_name        = "example-broker"
  engine_type        = "ActiveMQ"
  engine_version     = "5.17.6"
  host_instance_type = "mq.t3.micro"
  deployment_mode    = "SINGLE_INSTANCE"

  user {
    username = "admin"
    password = "AdminPassword1234"
  }

  logs {
    audit   = true
    general = true
  }
}
