resource "aws_fsx_ontap_file_system" "bad" {
  storage_capacity    = 1024
  subnet_ids          = ["subnet-0123456789abcdef0", "subnet-0fedcba9876543210"]
  deployment_type     = "MULTI_AZ_1"
  throughput_capacity = 128
  preferred_subnet_id = "subnet-0123456789abcdef0"
}
