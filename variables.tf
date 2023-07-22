variable "workspace" {
  type    = string
  default = "dev"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ami" {
  description = "ID of the Amazon Machine Image (AMI)"
  type        = string
  default     = "ami-0af9d24bd5539d7af"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Name of the key pair"
  type        = string
  default     = "kalkulus"
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}
