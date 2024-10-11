provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYS2NSRDTTYLSQZIB"
  secret_key = "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"
}

resource "aws_s3_bucket" "new_buck" {
  bucket = "m-bucket"

  tags = {
    Name        = "Mbucket"
    Environment = "Dev"
  }
}
