variable "description" {
  type        = string
  description = "Layer for dependencies"
  default     = "Lambda Layer for dependencies"
}

variable "compatible_architectures" {
  type        = list(string)
  description = "Compatible architecture type"
  default     = ["x86_64"]
}

variable "layer_name" {
  type        = string
  description = "Name of lambda layer"
  default     = "dependency_layer"
}

variable "skip_destroy" {
  type        = bool
  description = "Skip destroy of old layer"
  default     = false
}

variable "compatible_runtimes" {
  type        = list(string)
  description = "Compatible runtimes for nodejs"
  default     = ["nodejs14.x"]
}

variable "layer_zip_file" {
  type        = string
  description = "Zip file"
}