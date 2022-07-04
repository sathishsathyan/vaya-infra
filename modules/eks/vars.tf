variable "eks_cluster_role_arn" {
} 

variable "subnet_ids" { default= ["subnet-0bf39870", "subnet-3657777a", "subnet-6fda2904"]}
variable "eks_cluster_create_depends_on" {}
variable "env" {}
