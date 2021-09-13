resource "null_resource" "sleep" {
    provisioner "local-exec" {
        command = "chmod 777 sleep.sh && ./sleep.sh '${var.DURATION}'"
        interpreter = ["/bin/bash", "-c"]
  }
}

resource "aws_ssm_parameter" "foo" {
  name  = "foo121"
  type  = "String"
  value = "bar12"
}