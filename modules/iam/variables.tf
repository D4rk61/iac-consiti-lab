variable "sqs_policy_json" {
  description = "JSON de la política IAM para SQS"
}

variable "sqs_access_key_id" {
  description = "ID de la clave de acceso de SQS"
  default = ""
}

variable "sqs_secret_access_key" {
  description = "Clave de acceso secreta de SQS"
  default = ""
}
