provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
  bucket  = "terraform-test.andrew"
  key = "terraform"
  region  = "us-east-1"
  
}


}
