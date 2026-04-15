variable "ami_id" {     
  description = "AMI ID for the EC2 instance"
  type        = string  
  
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  
}

variable "ec2_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance will be launched"
  type        = string
}

variable "env" {
  description = "Environment"
  type        = string
}
