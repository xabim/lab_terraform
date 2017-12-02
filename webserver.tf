data "aws_availability_zones" "az" {

}


data "aws_ami" "ubuntu" {
    most_recent = true
    owners = ["099720109477"]

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
    }
}

data "template_file" "userdata" {
    template = "${file("templates/userdata.tpl")}"

    vars {
        webserver = "httpd"
    }
}

resource "aws_instance" "web-server" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = "${var.instance_type}"
}