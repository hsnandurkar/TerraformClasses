resource "aws_instance" "name" {
    ami           = "ami-00e801948462f718a"
    instance_type = "t3.micro"
    tags = {
        Name = "Hemant"
    }
  
}

# Usage: terraform [global options] workspace

#   new, list, show, select and delete Terraform workspaces.

# Subcommands:
#     delete    Delete a workspace
#     list      List Workspaces
#     new       Create a new workspace
#     select    Select a workspace
#     show      Show the name of the current workspace

###########Command for Workspace##########

# terraform workspace
# terraform workspace list
# terraform workspace new dev
# terraform workspace select dev
# terraform workspace show

###########################################