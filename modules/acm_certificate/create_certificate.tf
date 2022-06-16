

locals{
  dns_records_size = length(var.certificate_dns_records)
}
resource "aws_acm_certificate" "cert" {
  domain_name       = var.domain
  validation_method = "DNS"

  tags = {
    Environment = "${var.env}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

output "status" {
  value = aws_acm_certificate.cert.status
}

output "id" {
  value = aws_acm_certificate.cert.id
}

output "cert_cname" {
  value = aws_acm_certificate.cert.domain_validation_options
}
