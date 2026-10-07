resource "aws_elasticsearch_domain" "unencrypted" {
  domain_name = "example"

  encrypt_at_rest {
    enabled = false
  }
}
