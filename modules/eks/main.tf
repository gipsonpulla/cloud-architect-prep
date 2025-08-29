module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.8.5"
  cluster_name    = "gipson-eks"
  cluster_version = "1.30"
  subnet_ids      = [var.subnet_id]
  vpc_id          = var.vpc_id
}

