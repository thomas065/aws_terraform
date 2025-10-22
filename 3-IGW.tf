resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.order66.id

  tags = {
    Name    = "order66_IG"
    Service = "application1"
    Owner   = "ThomasBell"
    Planet  = "Naboo"
  }
}