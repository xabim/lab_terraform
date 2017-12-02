output "server-ip" {
    value = "${aws_instance.web-server.public_ip}"
}

output "az" {
    value = "${data.availability_zones.az.id}"
}