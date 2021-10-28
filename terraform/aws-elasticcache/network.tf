provider "aws" {
  region = "eu-west-1"
}

data "aws_vpc" "default" {
  id = var.eks_vpc
}

data "aws_subnet_ids" "apps_subnets" {
  vpc_id = var.eks_vpc 
}

resource "aws_elasticache_subnet_group" "elasticache-subnet" {
  name       = "elasticache-subnet"
  subnet_ids = data.aws_subnet_ids.apps_subnets.ids
}