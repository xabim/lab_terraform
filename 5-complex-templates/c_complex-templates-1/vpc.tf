resource "aws_vpc" "vpc" {
    cidr_block = "${var.cidr}"
    enable_dns_hostnames = false
    enable_dns_support = false
    tags {
        Name = "Openwebinars"
    }
}

resource "aws_subnet" "pub1" {
   vpc_id = "${aws_vpc.vpc.id}"
   cidr_block = "${var.pub1_cidr}"
   map_public_ip_on_launch = true
   availability_zone = "${data.aws_availability_zones.az.names[0]}"
   tags {
       Name = "pub1"
   }
}

resource "aws_subnet" "pub2" {
   vpc_id = "${aws_vpc.vpc.id}"
   cidr_block = "${var.pub2_cidr}"
   map_public_ip_on_launch = true
   availability_zone = "${data.aws_availability_zones.az.names[1]}"
   tags {
       Name = "pub2"
   }
}

resource "aws_subnet" "pri1" {
   vpc_id = "${aws_vpc.vpc.id}"
   cidr_block = "${var.pri1_cidr}"
   map_public_ip_on_launch = true
   availability_zone = "${data.aws_availability_zones.az.names[0]}"
   tags {
       Name = "pri1"
   }
}

resource "aws_subnet" "pri2" {
   vpc_id = "${aws_vpc.vpc.id}"
   cidr_block = "${var.pri2_cidr}"
   map_public_ip_on_launch = true
   availability_zone = "${data.aws_availability_zones.az.names[1]}"
   tags {
       Name = "pri2"
   }
}