# Checkov checks with no crosswalk mapping: expect findings that touch no control
resource "aws_lambda_function" "nodlq" {
  function_name = "nodlq"
  role          = "arn:aws:iam::111122223333:role/x"
  handler       = "index.handler"
  runtime       = "python3.12"
  filename      = "x.zip"
}
resource "aws_s3_bucket" "noreplica" {
  bucket = "acme-no-replica"
}
resource "aws_ecr_repository" "repo" {
  name = "repo"
}
resource "aws_elasticache_cluster" "cache" {
  cluster_id      = "c"
  engine          = "redis"
  node_type       = "cache.t3.micro"
  num_cache_nodes = 1
}
