variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "tf014"
}

variable "domain" {
  type        = string
  description = ""
  default     = ""
}

variable "service_name" {
  type        = string
  description = ""
  default     = "service_name"
}

variable "service_domain" {
  type        = string
  description = ""
  default     = "api-service-domain"
}