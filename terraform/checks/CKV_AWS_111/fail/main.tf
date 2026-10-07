data "aws_iam_policy_document" "unscoped_111" {
  statement {
    effect    = "Allow"
    actions   = ["s3:PutObject"]
    resources = ["*"]
  }
}
