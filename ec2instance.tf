provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYS2NSRDTTYLSQZIB"
  secret_key = "XBzeb3\Fe3I\Po4rlIo9IOqfZ0CF8iKCkt+HrbgH"
}

resource "aws_key_pair" "key" {
  key_name   = "server"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCb0397XGfW9SmaP0GD4Im9YSEnyTg98l0uak4kKa58OYSihs3fTP5Es7VvcorGHx+pXDL1i9x8osfVE9ent3/OGHCGcPMIIIS7GyaB+oZv8pHxzLpv5hy5pbTqY1Fv79AbwhbttEe9WhYHq9ME31hYjLe10JJ6soseSZ3h1CyL5KPrYxUOiOMwNX2BRMXVvqBeBIYkRij4qftBx6Vttf3vRPce9qquo0t1tE9rWRjjUZGDd1JPtUKGfBB/4vAqpr67k9usYnFIrVDhnABhttZavOPWGQLTdvta22ttUK8XmQTOnIrGwXDOnmbNGh8jqTGjLHF70XUWHOEJMY3MWlEflfGhFdDWHclIDppSh1CE+jpsiCkvtRhIBlld6Et5ETm+xCtuS1kgOU8Up7CHEsrnxKOUmqg+OG/0KSc1Hi0+kcu3yKAA7e2irbbOdUXcN/sbCrJ/6TP6BjJC4U4v70z4n813RzBH8HoQzv7FFESEUzMmrDAHuMncZHbocRX0uxc= root@ip-172-31-45-85.ap-south-1.compute.internal"
}



resource "aws_instance" "web"{
         ami           = "ami-0e1d06225679bc1c5"
         instance_type = "t2.micro"
         key_name   = "server"

  tags = {
    Name = "webserver1"
  }
}
