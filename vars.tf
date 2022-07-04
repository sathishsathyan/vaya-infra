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

variable "acm_certificate_id" {
  default = ""
}

variable "subnet_ids" { default = "" }
variable "eks_cluster_create_depends_on" { default = ""}

variable "eks_cluster_role_arn" { default = ""}
