terraform {
    required_version = ">= 0.11.0"

}

provider "aws" {
    region = "eu-west-1"
    profile = "openwebinars"
}

data "aws_availability_zones" "az" {}

module "vpc" {
    source = "./modules/vpc"
    enable_dns_hostnames = false
    enable_dns_support = false
}