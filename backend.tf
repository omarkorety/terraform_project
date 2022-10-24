terraform {
  backend "s3" {
    bucket         = "terraforim-omar"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terra-table"
  }
}