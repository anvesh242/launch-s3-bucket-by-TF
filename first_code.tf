#Launch S3 bucket by using Terraform 
	provider "aws" {
	  profile = "default"
	  region  = "us-east-1"
	
	}
	resource "aws_s3_bucket" "tf_course" {
	  bucket = "tf-course-20200818"
	  acl    = "private"
	}
