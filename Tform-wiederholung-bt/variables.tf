variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"

  validation {
    condition     = contains(["t2.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Instance type must be t2.micro, t3.small, or t3.medium."
  }
}   