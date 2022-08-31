variable "handler_name" {
  type        = string
  description = "Handler name"
  default     = "currentdats"
}
variable "file_name" {
  type        = string
  description = "File name"
  default     = "index"
}

variable "layer_zip_file" {
  type        = string
  description = "File name for lambda layer code"
  default     = "package"
}
