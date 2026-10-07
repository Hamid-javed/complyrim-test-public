resource "aws_db_instance" "single_az" {
  identifier        = "example"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  multi_az          = false
}
