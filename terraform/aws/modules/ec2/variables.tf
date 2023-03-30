variable "instance_type" {
  description = "Default type of instance"
  type        = string
  default     = "t2.micro"
}

variable "aws_instance_default_ssh_key_name" {
  description = "Name of aws key pair"
  type        = string
  default     = "key31012023" // TODO :: replace to .tfvars file
}

variable "default_sg_id" {}
