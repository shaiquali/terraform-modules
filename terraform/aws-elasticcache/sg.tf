resource "aws_security_group" "elasticache-sg" {
  name        = "elasticache-sg"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0e1b62433c0c81943"
  

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
