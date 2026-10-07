resource "aws_db_instance" "logged" {
  identifier                     = "example"
  engine                         = "mysql"
  instance_class                 = "db.t3.micro"
  allocated_storage              = 20
  enabled_cloudwatch_logs_exports = ["error", "general", "slowquery"]
}
