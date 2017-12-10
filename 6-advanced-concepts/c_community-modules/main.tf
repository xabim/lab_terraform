terraform {
    required_version = ">= 0.11.0"
}

provider "aws" {
    region = "${var.aws_region}"
    profile = "openwebinars"
    version = "~> 1.0"
}

data "aws_availability_zones" "az" {}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = "my-vpc"
    cidr = "10.0.0.0/16"

    azs                 = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
    private_subnets     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    public_subnets      = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
    database_subnets    = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]

    enable_dns_hostnames    = true
    enable_dns_support      = true

    tags = {
        Terraform   = "true"
        Enviroment  = "dev"   
    }
}