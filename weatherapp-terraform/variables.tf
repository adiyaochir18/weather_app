variable "region" {
  default = "eu-central-1"
}

variable "ami" {
  default = "ami-01e444924a2233b07"  # Use the Ubuntu AMI ID for your region
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "weatherapp-key"  # Use the name of your key pair
  description = "Name of the SSH key pair"
}

variable "instance_id" {
  description = "i-079b667d6b34a41d7"
}

variable "security_group_id" {
  description = "sg-071ac5f51c679412d"
}
