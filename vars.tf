variable "region" {
  default = "ap-south-1"
}

variable "env" {
  type        = string
  description = "Environment of infra. Ex: dev, stg, prod"
  default = "dev"
}

variable "domain" {
  default ="*.vaya.finance"
}

variable "api_gateway_domain_name" {}

variable "api_gateway_domain_name_path" {}

variable "acm_certificate_id" {
  default = ""
}
