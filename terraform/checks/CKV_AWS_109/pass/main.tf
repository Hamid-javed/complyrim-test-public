data "aws_iam_policy_document" "scoped" {
  statement {
    effect    = "Allow"
    actions   = ["iam:PutRolePolicy"]
    resources = ["arn:aws:iam::123456789012:role/example-role"]
  }
}
