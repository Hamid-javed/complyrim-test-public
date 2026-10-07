resource "aws_db_instance" "good" {
  identifier        = "example-db"
  engine            = "postgres"
  engine_version    = "14.1"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
}
