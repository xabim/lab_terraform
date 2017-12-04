resource "aws_instance" "web" {
    ami = "ami-1a962263"
    instance_type = "t2.micro"
}