terraform {
  backend "s3" {
    bucket  = "sprint3-snaatak"
    key     = "Ot-micro/env/dev/applications/frontend/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}