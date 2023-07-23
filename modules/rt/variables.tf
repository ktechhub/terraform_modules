variable "workspace" {
  default = "dev"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "ig_id" {
  description = "ID of the Internet Gateway"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}