# EC2-Instance

resource "aws_instance" "web" {
  ami                         = "ami-0bed3b2519c0c407f" # Replace with your desired AMI ID (https://cloud-images.ubuntu.com/locator/ec2/)
  associate_public_ip_address = true
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public-eu-west-1a.id

  user_data = base64encode("/templates/instance_tf.tpl", {})

  root_block_device {
    delete_on_termination = true
    # volume_size           = 10
    # volume_type           = "gp3"
  }

  tags = {
    Name = "Ubuntu"
  }
}