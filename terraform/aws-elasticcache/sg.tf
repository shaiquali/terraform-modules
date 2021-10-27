data "aws_security_group" "elasticache-sg" {
  name        = "elasticache-sg"
  description = "Allow all inbound traffic"
  vpc_id      = "${var.vpc_id}"
  

 ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  } 
}
