output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = [
    aws_subnet.public_subnet1.id,
    aws_subnet.public_subnet2.id
  ]
}