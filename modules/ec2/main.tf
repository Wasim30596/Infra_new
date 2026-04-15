resource "aws_instance" "myec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count = var.ec2_count
  subnet_id = var.subnet_id

  tags = {
    Name = "${var.env}-ec2-instance"
  }
}