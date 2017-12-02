data "aws_availability_zones" "az" {

}


resource "aws_instance" "web-server" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
}