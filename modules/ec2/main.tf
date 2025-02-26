resource "aws_instance" "web_server" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = [var.security_group_id]

  tags = {
    Name = "web-server"
  }
}

resource "aws_eip" "web_eip" {
  instance = aws_instance.web_server.id
}
