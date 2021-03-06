variable "name" {
  default     = "Terraform_VPC"
  type        = string
  description = "Name of the Virtual Private Cloud ( VPC )"
}

variable "project" {
  type        = string
  description = "Name of project this VPC is meant to house"
}

variable "environment" {
  type        = string
  description = "Name of environment this VPC is targeting"
}

variable "region" {
  default     = "ap-southeast-1"
  type        = string
  description = "Region of the VPC"
}

variable "igw" {
  default     = "TERRAFORM_IGW"
  type        = string
  description = "Name of the Internet Gateway"
}

variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
  type        = list
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["ap-southeast-1a", "ap-southeast-1b"]
  type        = list
  description = "List of availability zones"
}

variable "encrypted" {
  description = "Encrypt file system."
  type        = bool
  default     = true
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}
