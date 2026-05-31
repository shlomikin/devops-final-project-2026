terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "website_sg" {
  name = "website-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "website_server" {
  ami                    = "ami-0c1ac8a41498c1a9c"
  instance_type          = "t3.micro"
  key_name               = "devops-key"
  vpc_security_group_ids = [aws_security_group.website_sg.id]

  tags = {
    Name = "website-server"
  }
}

output "public_ip" {
  value = aws_instance.website_server.public_ip
}
