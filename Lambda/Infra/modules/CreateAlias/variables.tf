variable "alias_name" {
  type        = string
  description = "Alias name"
  default     = "dev"
}

variable "alias_description" {
  type        = string
  description = "Description for alias"
  default     = "Alias for latest development lambda version"
}

variable "function_version" {
  type        = string
  description = "Lambda version"
  default     = "$LATEST"
}

variable "function_name" {
  type        = string
  description = "Lambda function name"
}