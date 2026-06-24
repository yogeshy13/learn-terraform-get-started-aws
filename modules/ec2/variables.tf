variable "instance_type" {}
variable "key_name" {}
variable "public_key_path" {}
variable "instance_name" {}

variable "subnet_id" {}
variable "vpc_id" {}

variable "allowed_ssh_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}