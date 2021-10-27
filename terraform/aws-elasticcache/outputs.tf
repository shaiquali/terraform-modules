output "hostname" {
  value = aws_elasticache_cluster.example.cache_nodes[0].address
}

output "security_group" {
  value = data.aws_security_group.elasticache-sg.id
}