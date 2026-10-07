resource "aws_neptune_cluster" "good" {
  cluster_identifier                  = "neptune-cluster"
  engine                              = "neptune"
  enable_cloudwatch_logs_exports      = ["audit"]
  skip_final_snapshot                 = true
}
