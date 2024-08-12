provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYkkNSRDTTYLSQZIB"
  secret_key = "XBzeb3//3IOYPo4rlIo9IOqfZ0CF8iKCkt+HrbgH"
}
#Name of the Load Balancer
variable "elb_name" {
  type = string
}

#Time out Value
variable "timeout" {
    type = number
  
}
# Create a new load balancer
resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]


  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

 

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

 
  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "terraform-elb"
  }
}

