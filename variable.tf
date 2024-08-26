provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYS2NSRDTTYLSQZIB"
  secret_key = "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"
}
variable "ami_id" {
    default = "ami-0e1d06225679bc1c5"
  
}
variable "instance_type" {
    default = "t2.micro"
  
}

variable "ami_id1" {
   #if we define variable like this format then it will ask you the value while executing
  
}

resource "aws_instance" "web"{
         ami           = var.ami_id
         instance_type = var.instance_type
  tags = {
    Name = "webserver10"
  }
}

resource "aws_instance" "web"{
         ami           = var.ami_id1
         instance_type = var.instance_type
  tags = {
    Name = "webserver10"
  }
}
