resource "aws_docdb_cluster_parameter_group" "bad" {
  family = "docdb5.0"
  name   = "docdb-no-audit"

  parameter {
    name  = "tls"
    value = "enabled"
  }
}
