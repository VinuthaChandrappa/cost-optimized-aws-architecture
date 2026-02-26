resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = merge(var.common_tags, {
    Name = "cost-optimized-vpc"
  })
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = merge(var.common_tags, {
    Name = "private-subnet"
  })
}