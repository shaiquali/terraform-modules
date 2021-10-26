output "hostname" {
  value = aws_elasticache_cluster.example.cache_nodes[0].address
}