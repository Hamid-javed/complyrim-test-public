resource "aws_db_instance" "unlogged" {
  identifier         = "example"
  engine             = "mysql"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20
}
