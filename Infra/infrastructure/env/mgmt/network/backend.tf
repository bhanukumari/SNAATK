terraform {
  backend "s3" {
    bucket  = "sprint3-snaatak"
    key     = "env/mgmt/network/network.tfstate"
    region  = "us-east-2"
  }
}