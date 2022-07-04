resource "aws_eks_cluster" "vaya_eks_cluster" {
  name     = "vaya_eks_cluster"
  role_arn = var.eks_cluster_role_arn

  vpc_config {
    subnet_ids = [var.subnet_ids]
  }

  depends_on = [
    var.eks_cluster_create_depends_on
  ]
}

output "endpoint" {
  value = aws_eks_cluster.vaya_eks_cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.vaya_eks_cluster.certificate_authority[0].data
}

