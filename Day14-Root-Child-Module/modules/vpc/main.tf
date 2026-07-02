resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az
}

resource "aws_subnet" "secondary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr2
  availability_zone = var.az2
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = [
    aws_subnet.main.id,
    aws_subnet.secondary.id
  ]
}
