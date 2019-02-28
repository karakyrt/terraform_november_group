resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami = "ami-0fad7378adf284ce0"
}
