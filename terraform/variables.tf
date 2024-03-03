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

