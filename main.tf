terraform {
    required_version = ">= 0.11.1"
}

provider "aws" {
    region = "eu-west-1"
    profile = "openwebinars"
}

