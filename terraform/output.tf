
# Outputs
#
# sqs_user_connection_queue_id: ID de la cola de SQS asociada al usuario IAM para la conexion
# sqs_user_connection_queue_secret_key: Clave secreta asociada al usuario IAM para la conexion
# sqs_connection_url: URL de conexion de la cola de SQS

output "sqs_access_key_id" {
  sensitive = true
  value     = module.iam.sqs_access_key_id
}

output "sqs_secret_access_key" {
  sensitive = true
  value     = module.iam.sqs_secret_access_key
}

output "sqs_connection_url" {
  sensitive = true
  value     = module.sqs.sqs_queue_url
}

output "sqs_queue_name" {
  sensitive = true
  value     = module.sqs.sqs_queue_name
}

locals {
  sqs_keys_csv = "access_key,secret_key\n${module.iam.sqs_access_key_id},${module.iam.sqs_secret_access_key}"
}

locals {
  sqs_connection_url = "sqs_url,sqs_name\n${module.sqs.sqs_queue_url},${module.sqs.sqs_queue_name}"
}

resource "local_file" "sqs_user_keys" {
  content  = local.sqs_keys_csv
  filename = "sqs-keys.csv"
}

resource "local_file" "sqs_url" {
  content  = local.sqs_connection_url
  filename = "sqs-url.csv"
}
