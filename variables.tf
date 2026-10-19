variable "vpc_cidr" {
  type    = string
  default = "10.10.0.0/16"
}

variable "private_cidr" {
  type    = string
  default = "10.10.0.0/24"
}