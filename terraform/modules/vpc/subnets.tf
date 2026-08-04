#############################################
# Public Subnets
#############################################

resource "aws_subnet" "public" {

  for_each = {
    for index, cidr in var.public_subnets :
    index => cidr
  }

  vpc_id = aws_vpc.this.id

  cidr_block = each.value

  availability_zone = var.availability_zones[each.key]

  map_public_ip_on_launch = true

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-public-${each.key + 1}"
      Tier = "Public"
    }
  )
}

#############################################
# Private Subnets
#############################################

resource "aws_subnet" "private" {

  for_each = {
    for index, cidr in var.private_subnets :
    index => cidr
  }

  vpc_id = aws_vpc.this.id

  cidr_block = each.value

  availability_zone = var.availability_zones[each.key]

  map_public_ip_on_launch = false

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-private-${each.key + 1}"
      Tier = "Private"
    }
  )
}