provider "aws" { region = "us-east-1" }

resource "aws_security_group" "open_admin" {
  name        = "open-admin"
  description = "Admin ports open to the world"
  vpc_id      = "vpc-0123456789abcdef0"
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "rdp"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "data" {
  bucket = "acme-customer-data"
}
resource "aws_s3_bucket_acl" "data" {
  bucket = aws_s3_bucket.data.id
  acl    = "public-read"
}

resource "aws_db_instance" "main" {
  identifier              = "acme-main"
  engine                  = "mysql"
  instance_class          = "db.t3.medium"
  allocated_storage       = 20
  username                = "admin"
  password                = "ChangeMe123!"
  storage_encrypted       = false
  publicly_accessible     = true
  backup_retention_period = 0
  multi_az                = false
  skip_final_snapshot     = true
}

resource "aws_ebs_volume" "scratch" {
  availability_zone = "us-east-1a"
  size              = 40
  encrypted         = false
}

resource "aws_kms_key" "app" {
  description         = "app key"
  enable_key_rotation = false
}

resource "aws_iam_policy" "admin_all" {
  name = "admin-all"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{ Effect = "Allow", Action = "*", Resource = "*" }]
  })
}

resource "aws_cloudtrail" "main" {
  name                          = "main"
  s3_bucket_name                = aws_s3_bucket.data.id
  enable_log_file_validation    = false
  is_multi_region_trail         = false
  include_global_service_events = false
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:111122223333:loadbalancer/app/x/1"
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:111122223333:targetgroup/x/1"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t3.micro"
  metadata_options {
    http_tokens = "optional"
  }
  root_block_device {
    encrypted = false
  }
}

resource "aws_cloudwatch_log_group" "app" {
  name = "/acme/app"
}

resource "aws_sns_topic" "alerts" {
  name = "alerts"
}

resource "aws_sqs_queue" "jobs" {
  name = "jobs"
}

resource "aws_dynamodb_table" "orders" {
  name         = "orders"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_lambda_function" "proc" {
  function_name = "proc"
  role          = "arn:aws:iam::111122223333:role/x"
  handler       = "index.handler"
  runtime       = "python3.12"
  filename      = "x.zip"
}
