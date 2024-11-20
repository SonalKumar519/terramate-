# main.tf

resource "aws_security_group" "example_sg" {
  name        = "example_security_group"
  description = "Allow inbound SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example_security_group"
  }
}

resource "aws_instance" "example" {
  ami           = var.ami_id  # Use the variable for AMI ID
  instance_type = var.instance_type  # Use the variable for instance type

  security_groups = [aws_security_group.example_sg.name]

  associate_public_ip_address = true

  tags = {
    Name = "TerraformExampleInstance"
  }
}
