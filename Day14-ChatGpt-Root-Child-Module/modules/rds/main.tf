resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "db-subnet-group"
  }
}

resource "aws_db_instance" "db" {
  identifier = "mydb-instance"

  engine         = "mysql"
  engine_version = "8.0"

  instance_class = var.instance_class

  allocated_storage = 20

  db_name  = var.db_name
  username = var.db_user
  password = var.db_password

  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name

  vpc_security_group_ids = var.security_group_ids

  skip_final_snapshot = true

  publicly_accessible = true
}