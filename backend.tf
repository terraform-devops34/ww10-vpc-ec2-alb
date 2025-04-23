terraform {
  backend "s3" {
    bucket  = "lk-w7-terraformstatebucket" #replace with your bucket
    key     = "dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    //dynamodb_table = "locktable"
  }
}