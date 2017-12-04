resource "aws_security_group" "elb-sg" {
    name = "elb-sg"
    vpc_id = "${aws_vpc.vpc.id}"
    ingress {
        from_port = 80
        protocol = "http"
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}