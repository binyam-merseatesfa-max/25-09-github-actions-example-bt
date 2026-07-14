variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"

  validation {
    condition     = contains(["t2.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Instance type must be t2.micro, t3.small, or t3.medium."
  }
}

variable "instance_count" {
  description = "The EC2 instance count"
  type        = number
  default     = 1

  validation {
    condition     = (var.instance_count >= 0)
    error_message = "Instance count can not be less than 0!"
  }
}  