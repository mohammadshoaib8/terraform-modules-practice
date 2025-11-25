terraform {
  backend "s3" {
    bucket       = "terraform-state-mycompany-shoaib"
    key          = "stage/terraform.tfstate"
    region       = "ap-southeast-1"
    encrypt      = true
    use_lockfile = true
  }
}
