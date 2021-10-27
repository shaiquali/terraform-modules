provider "aws" {
  region = "eu-west-1"
}

data "aws_vpc" "default" {
  id = "${var.vpc_id}"
}

data "aws_subnet_ids" "apps_subnets" {
  vpc_id = "${var.vpc_id}"
  tags = {
    Name = "app-subnet*"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-subnet" {
  name       = "elasticache-subnet"
  subnet_ids = [aws_subnet_ids.apps_subnets.id]
}