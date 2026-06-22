variable "env" {
   type = list(string)
   default = [ "dev","prod","test" ]
# default = [ "dev","tester" ]
  
}
# moved used for renaming the instance name from test to tester
# moved {
#   from = aws_instance.name["test"]
#   to   = aws_instance.name["tester"]
# }
resource "aws_instance" "name" {
    ami = "ami-00e801948462f718a"
    instance_type = "t3.micro"
    for_each = toset(var.env)
    tags = {
      Name = each.key
    }
}