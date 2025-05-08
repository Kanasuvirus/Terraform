provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

resource "aws_instance" "example" {
  ami           = "ami-051316bfa9f309598"  # Amazon Linux 2 AMI for us-east-1
  instance_type = "t2.micro"

  key_name = "ec2.pem"         # Replace with your AWS key pair name

  tags = {
    Name = "MyEC2Instance"
  }
}
