terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

#AWS Provider Configuration Options
provider "aws" {
  region = "us-east-1"
}

#Resource Block S3 
resource "aws_s3_bucket" "terraform_test_bucket" {
  bucket = var.bucket
  acl    = "private"

  tags = {
    Name = "Terraform bucket"
  }
}

#Creating the IAM User
resource "aws_iam_user" "luit_user_test" {
  name = var.name
}

#Adding the IAM User to the S3 Full Access Group
resource "aws_iam_user_group_membership" "Full_S3" {
  user = var.name

  #Groups the specified user will be added to
  groups = [
    var.aws_iam_group,

  ]
}
#Extras
resource "aws_s3_bucket_object" "image_upload" {
  bucket = var.bucket
  key    = "test_image" #Name of the object once it's in your bucket
  source = var.images["archive3"]
}