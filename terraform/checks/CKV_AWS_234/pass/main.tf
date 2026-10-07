resource "aws_acm_certificate" "good" {
  domain_name       = "example.com"
  validation_method = "DNS"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }
}
