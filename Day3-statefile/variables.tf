variable "ami_id" {
    type = string
    description = "This is used for EC2 Instance"
    default = "ami-00e801948462f718a"
}

variable "instance_type" {
    type = string
    description = "This is used for EC2 instance type"
    default = "t3.micro"
}

variable "name" {
    type = string
    description = "This is used for EC2 instance type"
    default = "Hemant"
}