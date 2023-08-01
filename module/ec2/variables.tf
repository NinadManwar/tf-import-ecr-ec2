variable "ami" {}

variable "instance_type"{}

# variable "region" {}

variable "subnet_id" {}

variable "key" {}

variable "ec2_count" {
    type = number
    default = 1
}

variable "associate_public_ip_address" {
    type = bool
    default = true
}

variable "name" {}

# variable "vpc_security_group_ids" {}