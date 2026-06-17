#Mandatory
variable "project" {
    type = string
}

variable "environment" {
    type = string
}

variable "component" {
    type = string
}

variable "instance_type" {
    default = "t2.micro"
    type = string

    validation {
        condition = contains(["t2.micro", "t2.small", "t2.medium"], var.instance_type)
        error_message = "Instance type should be t2.micro or t2.small"
    }
}

variable "sg_ids" {
    type = list
}

#Optional
variable "ec2_tags" {
    default = {}
    type = map
}
