terraform {
  backend "s3" {
    bucket         = "storing-terraform-state-file"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server1" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform_EC2_instance1"
  }
}

resource "aws_instance" "app_server2" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform_EC2_instance2"
  }
}
