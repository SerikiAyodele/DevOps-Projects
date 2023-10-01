module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"

  bucket = "mias-bucket"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}

# ---------
# VPC
# ---------
resource "aws_vpc" "main" {
  cidr_block                     = var.cidr_block
  enable_dns_support             = "true"
  enable_dns_hostnames           = "true"

  tags = {
    Name = "mias_vpc"
  }
}

# ---------------
# PUBLIC SUBNETS
# ---------------
resource "aws_subnet" "public" {
    count                      = var.preferred_number_of_public_subnets == null ? length(data.aws_availability_zones.available.names) : var.preferred_number_of_public_subnets 
    vpc_id                     = aws_vpc.main.id
    cidr_block                 = cidrsubnet(var.vpc_cidr, 4 , count.index)
    map_public_ip_on_launch    = true
    availability_zone          = data.aws_availability_zone.available.names[count.index]

    tags = {
      Name = "mias_subnet1"
    }

}