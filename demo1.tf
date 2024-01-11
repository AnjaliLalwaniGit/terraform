provider "aws" {
   region = "us-east-1"
   access_key = "<YOUR_ACCESS_KEY>"
   secret_key = "<YOUR_SECRET_KEY>"
   token = "<YOUR_TOKEN >"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-0c7217cdde317cfec"
   instance_type =  "t2.micro"
   count = var.instance_count

   tags = {
           Name = "Terraform EC2"
   }
}
//varaible instance_count of type number
variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}

