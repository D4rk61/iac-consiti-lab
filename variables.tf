variable "prefix" {
  type        = string
  description = "Prefijo para los recursos"
  default     = "consiti-lab-"
}
variable "project" {
  type        = string
  description = "Nombre del proyecto"
  default     = "consiti-lab"

}

variable "aws_defautlt_zone" {
  type        = string
  description = "Region de despliegue de todos los componentes en aws"
  default     = "us-east-1"
}

variable "aws_access_key_id" {
  type        = string
  description = "access key id"
  default     = "AKIA5FTZCPXBLIYPQOOL"

}

variable "aws_secret_key" {

  type = string

  description = "secret key"
  default     = "6QoG6E2on/SDCVC0SYnN7YCdS2K8P3c1F7L51mjR"
}
