resource "aws_iam_policy_attachment" "group_attach" {
  name       = "group-attach"
  groups     = ["example-group"]
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
