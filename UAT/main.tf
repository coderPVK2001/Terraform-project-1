provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "vm_pvk" {
  ami             = "ami-06fa3f12191aa3337" # Amazon Linux 2 AMI
  instance_type   = "t3.micro"
  key_name        = "praj_kp"
  security_groups = ["default"]
  tags = {
    Name = "LinuxVM"
  }
}
