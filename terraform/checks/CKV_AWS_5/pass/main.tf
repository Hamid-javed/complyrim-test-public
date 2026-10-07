resource "aws_elasticsearch_domain" "encrypted" {
  domain_name = "example"

  encrypt_at_rest {
    enabled = true
  }
}
