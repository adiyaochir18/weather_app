provider "aws" {
  region = var.region
}

resource "aws_instance" "weatherapp" {
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_groups   = [aws_security_group.weather_sec2.name]
  
  tags = {
    Name = "weatherapp-instance"
  }
}

resource "aws_security_group" "weather_sec2" {
  name        = "weather_sec2"
  description = "Allow SSH and HTTP/HTTPS traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
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
