provider "aws" {
  profile    = "default"
  region     = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-08af61eccb1ae7849"
  instance_type = "t2.micro"
  key_name      = "Mykeypair100"
  tags{
	"Name": "MyEC2Instance"
	}
}
