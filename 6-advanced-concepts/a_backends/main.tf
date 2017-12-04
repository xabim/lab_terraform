terraform {
    required_version = ">= 0.11.0"
    backend "s3" {
        bucket = "openwebinars-states"
        region = "eu-west-1"
        key = "states-tfstate"
        dynamodb_table = "openwebinars-lockin"
        profile = "openwebinars"
    }

}

provider "aws" {
    region = "eu-west-1"
    profile = "openwebinars"
}

data "aws_availability_zones" "az" {}