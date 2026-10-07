resource "aws_db_instance" "multi_az" {
  identifier        = "example"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  multi_az          = true
}
