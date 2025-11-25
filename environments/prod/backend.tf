terraform {
  backend "s3" {
    bucket         = "terraform-state-mycompany-shoaib"
    key            = "prod/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
