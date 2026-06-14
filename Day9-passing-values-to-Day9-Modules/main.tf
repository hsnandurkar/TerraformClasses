module "dev" {
    source = "../Day9-Module"
    instance_type = "t3.micro"
    name = "dev-instance"
    ami_id = "ami-00e801948462f718a"
    
}