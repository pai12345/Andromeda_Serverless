variable "function_name" {
  type        = string
  description = "Function name"
}

variable "qualifier" {
  type        = string
  description = "alias name"
}

variable "authorization_type" {
  type        = string
  description = "Authorization type"
  default     = "NONE"
}

