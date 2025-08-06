terraform {
    backend "s3" {
        bucket         = "jxs-terraform-state-bucket"
        key            = "global/s3/terraform.tfstate"
        region         = "eu-west-1"
        dynamodb_table = "terraform-locks-file"
      
    }
}