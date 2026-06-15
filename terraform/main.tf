provider "aws" {
  region = "us-east-1"
}

# VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Public Subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

# Security Group
resource "aws_security_group" "app_sg" {
  name        = "ecommerce-sg"
  description = "Allow frontend + backend ports"
  vpc_id      = aws_vpc.main.id

  # Frontend
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Backend services
  ingress {
    from_port   = 3001
    to_port     = 3004
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "app" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 22.04 LTS (x86) in us-east-1
  instance_type = "t3.micro"              # Free Tier eligible
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  user_data = <<EOF
#!/bin/bash
apt-get update -y
apt-get install -y docker.io
systemctl start docker
systemctl enable docker

docker pull indusonushivu/frontend-service:latest
docker run -d -p 80:3000 indusonushivu/frontend-service:latest

docker pull indusonushivu/user-service:latest
docker run -d -p 3001:3001 indusonushivu/user-service:latest

docker pull indusonushivu/products-service:latest
docker run -d -p 3002:3002 indusonushivu/products-service:latest

docker pull indusonushivu/orders-service:latest
docker run -d -p 3003:3003 indusonushivu/orders-service:latest

docker pull indusonushivu/cart-service:latest
docker run -d -p 3004:3004 indusonushivu/cart-service:latest
EOF
}

# Outputs
output "frontend_public_ip" {
  value = aws_instance.app.public_ip
}

output "frontend_public_dns" {
  value = aws_instance.app.public_dns
}
