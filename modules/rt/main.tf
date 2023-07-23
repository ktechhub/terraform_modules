resource "aws_route_table" "public" {
  vpc_id = var.vpc_id
}

resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.ig_id
}

resource "aws_route_table_association" "public_subnet" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public.id
}
