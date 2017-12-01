terraform {
    required_version = ">= 0.11.1"
}

provider "aws" {
    region = "eu-west-1"
    profile = "openwebinars"
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.8.0.0/16"
    enable_dns_hostnames = false
    enable_dns_support = false
    tags {
        Name = "Openwebinars"
    }
}