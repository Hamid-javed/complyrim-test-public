resource "aws_db_instance" "bad" {
  identifier        = "example-db"
  engine            = "postgres"
  engine_version    = "9.5"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
}
