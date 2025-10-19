# resource "aws_eip" "nat" {
#   # vpc = true

#   tags = {
#     Name = "nat"
#   }
# }

# resource "aws_nat_gateway" "nat" {
#   allocation_id = aws_eip.nat.id
#   subnet_id     = aws_subnet.public-eu-west-1a.id

#   tags = {
#     Name = "nat"
#   }

#   depends_on = [aws_internet_gateway.igw]
# }

# output "endpoint1" {
#   value = "http://${aws_eip.nat.public_ip}:80"
# }

# output "endpoint2" {
#   value = "http://${aws_eip.nat.public_dns}:80"
# }