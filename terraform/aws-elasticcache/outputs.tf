output "hostname" {
  value = aws_elasticache_cluster.example.cache_nodes[0].address
}

output "vpc" {
  value = var.eks_vpc
}