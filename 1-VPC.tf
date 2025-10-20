# this  makes  vpc.id which is aws_vpc.order66.id
resource "aws_vpc" "order66" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = {
    Name    = "${var.env_prefix}-vpc"
    Service = "application1"
    Owner   = "ThomasBell"
    Planet  = "DeathStar"
  }
}

output "vpc_tags" {
  value = aws_vpc.order66.tags_all
}
