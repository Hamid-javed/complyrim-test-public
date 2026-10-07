resource "aws_db_instance" "encrypted" {
  identifier        = "example"
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  storage_encrypted = true
}
