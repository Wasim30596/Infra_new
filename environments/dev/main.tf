# module "vpc" {
#   source = "../../modules/vpc"
#   vpc_cidr_block = "10.0.0.0/16"
#   subnet_cidr_block = "10.0.0.0/24"
#   availability_zone = "${var.aws_region}a"
#   env = "dev"
# }

# module "ec2" {
#   source = "../../modules/ec2"
#   instance_type = "t3.small"
#   ami_id = "ami-05d2d839d4f73aafb" # ubuntu AMI
#   ec2_count = 1
#   subnet_id = module.vpc.subnetid
#   env = "dev"
# }

# module "s3" {
#   source = "../../modules/s3"
#   bucket_name = "my-tf-test-bucket-dev-15042026"
#   env = "dev"
# }