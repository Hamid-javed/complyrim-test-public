resource "aws_fsx_ontap_file_system" "good" {
  storage_capacity    = 1024
  subnet_ids          = ["subnet-0123456789abcdef0", "subnet-0fedcba9876543210"]
  deployment_type     = "MULTI_AZ_1"
  throughput_capacity = 128
  preferred_subnet_id = "subnet-0123456789abcdef0"
  kms_key_id          = "arn:aws:kms:us-east-1:123456789012:key/example-key"
}
