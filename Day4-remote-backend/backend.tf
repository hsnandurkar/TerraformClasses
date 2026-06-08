terraform {
  backend "s3" {
    bucket = "statefilecommonbucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
