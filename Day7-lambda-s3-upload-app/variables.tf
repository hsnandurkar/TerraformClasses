variable "aws_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket containing Lambda ZIP"
}

variable "lambda_zip" {
  description = "Lambda zip file path"
}