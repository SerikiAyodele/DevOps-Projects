# module "s3_bucket" {
#   source = "terraform-aws-modules/s3-bucket/aws"
#   version = "3.15.1"

#   bucket = "mias-bucket"
#   acl    = "private"

#   control_object_ownership = true
#   object_ownership         = "ObjectWriter"

#   versioning = {
#     enabled = true
#   }
# }

# ---------
# VPC
# ---------
resource "aws_vpc" "main" {
  cidr_block                     = "10.0.0.0/16"
  enable_dns_support             = "true"
  enable_dns_hostnames           = "true"

  tags = merge(
          var.tags,
          {
            Name = "Darey-tutorial"
          }
  )
}

# ---------------
# PUBLIC SUBNETS
# ---------------
resource "aws_subnet" "public" {
    vpc_id                     = aws_vpc.main.id
    cidr_block                 = "10.0.0.0/16"
    map_public_ip_on_launch    = true

    tags = {
      Name = "mias_subnet1"
    }

}

# #------------------
# # NAT & ELASTIC-IP
# #------------------
# resource "aws_ip" "nat_eip" {
#   vpc = true
#   depends_on = [aws_internet_gateway.ig]

#     tags = merge(
#     var.tags,
#     {
#       Name = format("%s-EIP", var.name)
#     },
#   )
# }

# module "cluster" {
#   source  = "terraform-aws-modules/rds-aurora/aws"

#   name           = "test-aurora-db-mysql"
#   engine         = "aurora-mysql"
#   engine_version = "8.0.mysql_aurora.3.04.0"
#   instance_class = "db.r6g.large"
#   instances = {
#     one = {}
#     2 = {
#       instance_class = "db.r6g.2xlarge"
#     }
#   }

#   storage_encrypted   = true
#   apply_immediately   = true
#   monitoring_interval = 10

#   enabled_cloudwatch_logs_exports = ["audit"]

#   tags = {
#     Environment = "dev"
#     Terraform   = "true"
#   }
# }

resource "aws_rds_cluster" "default" {
  cluster_identifier      = "aurora-cluster-demo"
  engine                  = "aurora-mysql"
  engine_version          = "8.0.28.mysql_aurora.3.04.0"
  availability_zones      = ["us-east-1a", "us-east-1b"]
  database_name           = "mydb"
  master_username         = "foo"
  master_password         = "Bencarson07#"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}