#i-040b804995ddb9ae9



resource "aws_instance" "name" {
    ami           = "ami-0521cb2d60cfbb1a6"
    instance_type = "t3.micro"
    tags = {
        Name = "Ec2"
    }
}

resource "aws_s3_bucket" "bucketName" {
    bucket = "statefilelockbucket"
   
  
}

resource "aws_s3_bucket_versioning" "name" {
    bucket = aws_s3_bucket.bucketName.id
    versioning_configuration {
        status = "Suspended"
    }
}