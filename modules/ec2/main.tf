data "aws_key_pair" "key_pair" {
  key_name = var.key_pair_name
}

resource "aws_instance" "instance" {
  count                  = var.instance_count
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  key_name = data.aws_key_pair.key_pair.key_name

  tags = {
    "environment" : var.workspace
  }

  provisioner "local-exec" {
    command = "sleep 60" # Wait for the instance to be ready before running Ansible
  }

  # provisioner "local-exec" {
  #   command = "sudo apt update && sudo apt install python3 nginx curl -y && echo Done!"
  # }
}
