data "aws_iam_policy_document" "scoped_111" {
  statement {
    effect    = "Allow"
    actions   = ["s3:PutObject"]
    resources = ["arn:aws:s3:::example-bucket/*"]
  }
}
