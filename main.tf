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
  region = "us-west-2"  # Choose your AWS region
}

resource "aws_iam_user" "example_user" {
  name = "example-user"
  path = "/"
}
resource "aws_iam_user_policy_attachment" "example_attach" {
  user       = aws_iam_user.example_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

