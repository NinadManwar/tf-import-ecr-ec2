resource "aws_instance" "wordpress_qa" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    count    = var.ec2_count
    key_name = var.key
    associate_public_ip_address = var.associate_public_ip_address
    tags = {
        Name = var.name
  }
}