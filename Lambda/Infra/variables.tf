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

variable "folder_name" {
  type        = string
  description = "Folder name"
  default     = "Dats"
}
variable "layer_zip_file" {
  type        = string
  description = "File name for lambda layer code"
  default     = "package"
}
