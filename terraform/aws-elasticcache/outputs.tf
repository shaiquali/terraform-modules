output "hostname" {
  value = aws_elasticache_cluster.default.endpoint
}