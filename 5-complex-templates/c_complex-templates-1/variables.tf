variable "cidr" {
    type = "string"
    default = "10.0.0.0/16"
}

variable "instance_type" {
    type = "string"
    default = "t2.micro"
}

variable "region" {
    type = "string"
    default = "eu-west-1"
}

variable "aws_amis" {
    type = "map"
    default = {
        "eu-west-1" = "ami-1a962263"
        "us-east-1" = "ami-55ef662f"
        "eu-central-1" = "ami-bf2ba8d0"
    }
}

variable "project" {
    type = "string"
    default = "web"
}

variable "enviroment" {
    type = "string"
    default = "prod"
}