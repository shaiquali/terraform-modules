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

  tags = merge(
    local.common_tags,
    {
      "APPID" = "test"
    },
  )
}

locals {
  service_name = "forum"
  owner        = "Community Team"
}

locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }
}