
# input variables

variable "profile" {
  type        = string
  default     = "default"
  description = "aws cli credentials profile"
}

variable "region" {
  type        = string
  default     = "us-west-2"
  description = "aws region"
}
