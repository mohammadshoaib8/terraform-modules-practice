provider "aws" {
  region = "ap-southeast-1"
}

# ------------------------------
# S3 Bucket for Terraform State
# ------------------------------
resource "aws_s3_bucket" "tf_state" {
  bucket        = "terraform-state-mycompany-shoaib"
  force_destroy = false

  tags = {
    Name = "Terraform Remote State Bucket"
  }
}

# Versioning (Important)
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tf_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Server-side bucket encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "sse" {
  bucket = aws_s3_bucket.tf_state.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# ------------------------------
# DynamoDB for State Locking
# ------------------------------
resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform Lock Table"
  }
}
