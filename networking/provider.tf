terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
     version = "5.23.0"
   }
 }

 backend "s3" {
    encrypt = true    
    bucket = "terraform-state-file-004"
    dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}