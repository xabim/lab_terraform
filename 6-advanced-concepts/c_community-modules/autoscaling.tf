resource "aws_launch_configuration" "web-server" {
  name_prefix     = "web-server"
  image_id        = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type   = "t2.micro"
  key_name        = "openwebinars"
  security_groups = ["${aws_security_group.web-sg.id}"]
  user_data       = "${file("templates/userdata.tpl")}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "as-web" {
  name                  = "${aws_launch_configuration.web-server.name}"
  launch_configuration  = "${aws_launch_configuration.web-server.name}"
  max_size              = 1
  min_size              = 1
  load_balancers        = ["${aws_elb.web.id}"]
  vpc_zone_identifier   = ["${module.vpc.public_subnets}"]
  wait_for_elb_capacity = 1

  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "web-server"
  }

  lifecycle {
    create_before_destroy = true
  }
}
