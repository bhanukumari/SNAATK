data "terraform_remote_state" "network_state" {
  backend = "s3"
  config = {
    bucket = "sprint3-snaatak"
    key    = "Ot-micro/env/dev/network/terraform.tfstate"
    region = "us-east-2"
  }
}