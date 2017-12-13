# lab_terraform
The goal of this project is to provide the terraform's templates for the terraform's course

## 2-providers
Using providers in terraform. Example with `aws`

## 3-basic-templates
Using templates in terraform. Example with `userdata` for a `aws_instance` resource

## 4-import
Using `terraform import` for import a machine in `tfstate`

## 5-complex-templates
### a_count
Using `count` to generate multiple `aws_instance` resources

### b_reusable-templates
Using `name_prefix` attribute to generate multiple `aws_elb` resources

### c_complex-templates-1
Using `lookup` function in ami attribute to generate `aws_instance` resource depending on region

### d_complex-templates-2
Using `lookup` function in image_id `aws_launch_configuration` to generate resources depending on region

## 6-advanced-concepts
### a_backends
Using s3 backend to store tfstate

### b_creating-modules
Using modules to create `aws_vpc`

### c_community-modules
Using community modules to create `aws_vpc`

## 7-other-providers
### a_mysql
Using `mysql` provider

### b_google-cloud
Using `google` provider

## 8-packer
Using `packer` tool from HashiCorp to create an ami at AWS