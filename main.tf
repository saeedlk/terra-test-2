terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.27"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

# CREATE a VPC --> myVPC
resource "aws_vpc" "myVPC" {
    cidr_block = "10.0.0.0/26"
}

# CREATE a Subnet for myVPC
resource "aws_subnet" "mySub1" {
    vpc_id = aws_vpc.myVPC.id
    cidr_block = "10.0.0.16/28"
}
