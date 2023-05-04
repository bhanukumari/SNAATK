terraform {
  backend "s3" {
    bucket  = "sprint3-snaatak"
    key     = "Ot-micro/env/dev/network/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

