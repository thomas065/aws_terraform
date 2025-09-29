# this  makes  vpc.id which is aws_vpc.order66.id
resource "aws_vpc" "order66" {
  cidr_block = "10.32.0.0/16"

  tags = {
    Name    = "order66"
    Service = "application1"
    Owner   = "ThomasBell"
    Planet  = "DeathStar"
  }
}