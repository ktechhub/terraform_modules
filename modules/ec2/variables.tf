variable "workspace" {
  default = "dev"
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}

variable "sg_id" {
  description = "ID of the security group"
  type        = string
}

variable "ami" {
  description = "ID of the Amazon Machine Image (AMI)"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "key_pair_name" {
  description = "Name of the key pair"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}

variable "user" {
  default = "ubuntu"
}