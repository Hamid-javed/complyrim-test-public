resource "aws_sqs_queue" "encrypted" {
  name              = "encrypted-queue"
  kms_master_key_id = "alias/example-cmk"
}
