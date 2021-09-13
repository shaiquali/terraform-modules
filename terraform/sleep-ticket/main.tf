resource "null_resource" "sleep" {
    provisioner "local-exec" {
        command = "chmod 777 sleep.sh && ./sleep.sh '${var.DURATION}'"
        interpreter = ["/bin/bash", "-c"]
  }
  tags = {
    "APPID" = "test"
    "APPLICATION OWNER" = "hghg"
    "APPLICATION NAME" = "dnfgd"
  }
}