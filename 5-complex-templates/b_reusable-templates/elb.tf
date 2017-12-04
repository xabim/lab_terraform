data "aws_availability_zones" "az" {}

resource "aws_elb" "elb-web" {
    name = "${var.enviroment}-${var.project}"
    "listener" {
        instance_port = 80
        instance_protocol = "http"
        lb_port = 80
        lb_protocol = "http"
    }
    availability_zones = ["${data.aws_availability_zones.az.names}"]
}