resource "aws_sns_topic" "encrypted" {
  name              = "encrypted-topic"
  kms_master_key_id = "alias/example-cmk"
}
