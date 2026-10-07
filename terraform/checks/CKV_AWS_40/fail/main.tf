resource "aws_iam_user_policy_attachment" "user_attach" {
  user       = "example-user"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
