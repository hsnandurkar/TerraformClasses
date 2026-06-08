output "instance_pubIP" {
  value = aws_instance.name.public_ip
  description = "The public Ip of EC2 Instance"
}
output "instance_pvtIP" {
  value = aws_instance.name.private_ip
  description = "The private Ip of EC2 Instance"
}
output "instance_subnetId" {
    value = aws_instance.name.subnet_id
    description = "The subnet Id of EC2 Instance"
}