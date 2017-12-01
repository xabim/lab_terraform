terraform {
    required_version = ">= 0.11.1"
}

provider "aws" {
    region = "eu-west-1"
    profile = "openwebinars"
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    tags {
        Name = "Openwebinars"
    }
}