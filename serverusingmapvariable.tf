provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYS2NSRDTTYLSQZIB"
  secret_key = "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"
}

variable "tags" {
    type = list
    default = ["webserver","appserver","prodserver"]
  
}
/*
variable "instance_type" {
  type = list 
  default = ["t2.nano","t2.micro","t3.micro"]
}*/
variable "mapvar" {
    default = {
        web = "t2.nano"
        app = "t2.micro"
        prod = "t3.micro"
    }
  
}
/* 
resource "aws_instance" "web"{
         ami           = "ami-0e1d06225679bc1c5"
         instance_type = var.mapvar["web"]
         key_name   = "server"

  tags = {
    Name = "webserver"
  }
}

resource "aws_instance" "app"{
         ami           = "ami-0e1d06225679bc1c5"
         instance_type = var.mapvar["app"]
         key_name   = "server"

  tags = {
    Name = "appserver"
  }
}

resource "aws_instance" "prod"{
         ami           = "ami-0e1d06225679bc1c5"
         instance_type = var.mapvar["prod"]
         key_name   = "server"

  tags = {
    Name = "Prod"
  }
}*/

resource "aws_instance" "web"{
         ami           = "ami-0e1d06225679bc1c5"
         instance_type = var.mapvar["web"]
          #instance_type = var.instance_type[count.index]
         count = 3
         key_name   = "server"

  tags = {
    Name =var.tags[count.index]
  }
}
