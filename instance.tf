resource "aws_instance"  "example"{
  instance_type                =  "${var.instance_type}"
  ami                          =  "ami-0fad7378adf284ce0"
  key_name                     = "${var.key_name}"
  subnet_id                    = "${aws_subnet.dev1.id}"
  associate_public_ip_address  =  "true"
  count  =  "${var.count}"

 tags {
   Environment = "${var.Environment}${count.index +1}"
   Create_by   =  "${var.Created_by}"
  }
}
