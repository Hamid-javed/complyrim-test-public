data "aws_iam_policy_document" "unscoped" {
  statement {
    effect    = "Allow"
    actions   = ["iam:PutRolePolicy"]
    resources = ["*"]
  }
}
