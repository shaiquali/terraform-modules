provider "aws" {
  region = "eu-west-1"
}

data "aws_vpc" "default" {
  id = "vpc-0e1b62433c0c81943"
}

data "aws_subnet_ids" "apps_subnets" {
  vpc_id = "vpc-0e1b62433c0c81943"  
}

resource "aws_elasticache_subnet_group" "elasticache-subnet" {
  name       = "elasticache-subnet"
  subnet_ids = ["${data.aws_subnet_ids.apps_subnets.ids}"]
}