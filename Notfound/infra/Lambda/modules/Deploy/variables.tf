variable "policy" {
  type        = string
  description = "Policy for Lambda function"
}

variable "zip_file" {
  type        = string
  description = "Path to zip file"
}

variable "execution_role_name" {
  type        = string
  description = "Execution role name for lambda"
  default     = "notfound_lambda"
}

variable "function_name" {
  type        = string
  description = "Function name for lambda"
  default     = "notfound"
}

variable "handler_name" {
  type        = string
  description = "Handler name for lambda"
  default     = "notfound.notfound"
}

variable "runtime" {
  type        = string
  description = "runtime for lambda"
  default     = "nodejs14.x"
}

variable "lambda_description" {
  type        = string
  description = "Function for Service - Not found"
  default     = "Function for Service - Not found"
}

variable "memory_size" {
  type        = string
  description = "memory size for function"
  default     = 128
}

variable "package_type" {
  type        = string
  description = "package type for lambda"
  default     = "Zip"
}

variable "tags" {
  type = object({
    type    = string,
    project = string
  })
  description = "tags for lambda"
  default = {
    type    = "lambda"
    project = "andromeda"
  }
}