variable "aws_region" {
  default = "us-east-1"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "eks_node_instance_type" {
    default = "t3.medium"
}

variable "project_name" {
    default = "flask-app-sri7800"
}

variable "key_name" {
    description = "Enter your key value pair"
    type = string
    default = "Restart"

}

