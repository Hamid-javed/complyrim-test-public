resource "aws_db_instance" "deletion_unprotected" {
  identifier          = "example"
  engine              = "mysql"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  deletion_protection = false
}
