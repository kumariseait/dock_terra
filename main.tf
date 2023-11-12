provider "aws" {
      region = var.aws_region
}

resource "aws_instance" "app_server" {

  ami           = var.ami

  instance_type = var.inst_type

  availability_zone = var.inst_az

  key_name = "kv-key"

  user_data = <<-EOF
  #!/bin/bash
  sudo apt-get update -y
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
  sudo usermod -aG docker ubuntu
  EOF

  tags = {
    Name = "myec2-dock"
  }
}
