output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}

output "db_instance_id" {
  value = aws_db_instance.db.id
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.db_subnet_group.name
}