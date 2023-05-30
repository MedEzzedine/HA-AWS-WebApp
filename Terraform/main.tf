module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "WebApp-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.2.0/23", "10.0.4.0/23"]
  public_subnets  = ["10.0.0.0/24", "10.0.1.0/24"]

  # One NAT gateway per AZ
  enable_nat_gateway = true
  single_nat_gateway = false
  one_nat_gateway_per_az = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}