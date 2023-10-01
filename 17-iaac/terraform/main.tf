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
  cidr_block                     = "172.16.0.0/16"
  enable_dns_support             = "true"
  enable_dns_hostnames           = "true"

  tags = {
    Name = "mias_vpc"
  }
}

# ---------------
# PUBLIC SUBNETS
# ---------------
resource "aws_subnet" "public1" {
    count                      = 2
    vpc_id                     = aws_vpc.main.id
    cidr_block                 = var.cidr_block
    map_public_ip_on_launch    = true
    availability_zone          = data.aws_availability_zone.available.names[count.index]

    tags = {
      Name = "mias_subnet1"
    }

}