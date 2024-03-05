
terraform {

  required_providers {
    # proveedor de aws

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    # proveedor de gcloud

    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}


provider "aws" {
  region = var.aws_defautlt_zone

  # credenciales de acceso

  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_key
}

provider "google" {
  credentials = file("") # Archivo de credenciales
  project     = var.google_project_id

}
