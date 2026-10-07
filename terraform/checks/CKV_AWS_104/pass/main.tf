resource "aws_docdb_cluster_parameter_group" "good" {
  family = "docdb5.0"
  name   = "docdb-audit"

  parameter {
    name  = "audit_logs"
    value = "all"
  }
}
