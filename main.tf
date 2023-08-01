
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

module "ecr" {
  source   = "./module/ecr"
  
}

module "ec2" {
  source                = "./module/ec2"
  ami                   = "ami-0b5eea76982371e91"
  instance_type         = "t2.micro"
  key                   = ""
  count                 = "1"
  associate_public_ip_address   = true
  subnet_id =  ""
  name      =  "wordpress-qa"

}
