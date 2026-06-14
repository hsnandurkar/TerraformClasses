# https://github.com/hsnandurkar/Terraform-s3-module.git

module "s3_bucket" {
  source = "git::https://github.com/hsnandurkar/Terraform-s3-module.git//S3"

  bucket = "mayhemants3coolbuckeett"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}