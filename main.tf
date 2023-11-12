provider "aws" {
      region = var.aws_region
}

resource "aws_instance" "app_server" {

  ami           = var.ami

  instance_type = var.inst_type

  availability_zone = var.inst_az

  key_name = "kv-key"

  tags = {
    Name = "myec2-inst1"
  }
}
