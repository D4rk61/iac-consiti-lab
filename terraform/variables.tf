## Variables para AWS
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
  type    = string
  default = ""

}
variable "aws_secret_key" {
  type    = string
  default = ""

}

## Variables para GCP
variable "google_project_id" {
  type        = string
  description = "ID del proyecto de GCP"
  default     = "consiti-lab"
}

variable "vpc_location" {
  type        = string
  description = "Ubicacion de la VPC"
  default     = "us-east1"
}

variable "subnet_cidr_range" {
  type        = string
  description = "CIDR de la subnet"
  default     = "10.10.0.0/24"
}


variable "gke_location" {
  type        = string
  description = "Ubicacion del cluster tiene que ser una zona de disponibilidad con la ubicacion de la VPC"
  default     = "us-east1-b"
}


variable "initial_node_count" {
  type        = string
  description = "Cantidad de nodos inicial"
  default     = 2

}
variable "node_count" {
  type        = string
  description = "Cantidad de nodos"
  default     = 3

}

variable "machine_type" {
  type        = string
  description = "Tipo de maquina"
  default     = "n1-standard-1"
}

