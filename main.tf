provider "aws" {
  version = "~>2.7"
  region  = var.region
}

module "iam"{
  source = "./modules/iam"
}

module "acm_cert"{
  source = "./modules/acm_certificate"
  domain = var.domain
  env = var.env
}

module "eks_cluster"{
  source = "./modules/eks"
  domain = var.domain
  subnet_ids = var.subnet_ids
  eks_cluster_role_arn = module.acm_cert.id
  eks_cluster_create_depends_on = module.iam.policy
  env = var.env
  
}

output "certificate_id" {
  value = module.acm_cert.id
}

output "certificate_status" {
  value = module.acm_cert.status
}

output "certificate_cname" {
  value = module.acm_cert.cert_cname
}

output "eks_endpoint" {
  value = module.eks_cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = module.eks_cluster.kubeconfig-certificate-authority-data
}
