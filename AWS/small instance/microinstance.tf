terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  #region  = "us-east-1"
  #you can use variables.tf filw to configure values
  region = var.region
}

resource "aws_instance" "example" {
    #Amazon Linux
    #ami  = "ami-047a51fa27710816e"

  # Red Hat Enterprise Linux
   ami = "ami-096fda3c22c1c990a"
  instance_type = "t2.micro"
}
resource "aws_default_vpc" "default" {

}
