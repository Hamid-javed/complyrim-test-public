resource "aws_neptune_cluster" "bad" {
  cluster_identifier   = "neptune-cluster"
  engine               = "neptune"
  skip_final_snapshot  = true
}
