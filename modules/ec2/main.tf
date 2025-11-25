data "aws_ami" "myami" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-*"]
  }
}

resource "aws_instance" "myvm" {
  ami                         = data.aws_ami.myami.id
  instance_type               = var.instance_type
  availability_zone           = var.az
  associate_public_ip_address = true
  key_name                    = var.key_pair
  vpc_security_group_ids      = [var.security_group]
  subnet_id                   = var.subnet_id
  tags = {
    Name = var.tag_name
  }
}
