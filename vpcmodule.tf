module "vpc" {
source = "TERRAFORM/VPC/vpc.tf"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

azs          = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnets = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

  enable_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}