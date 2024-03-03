# Implementacion de modulos

# Implementacion de SQS
#
# Descripcion: Este modulo se utiliza para configurar un Simple Queue Service (SQS) en AWS. 
# Permite crear una cola de SQS con el nombre especificado en la variable "sqs_name".
#
# Variables:
# sqs_name: nombre del SQS queue

module "sqs" {

  source = "./modules/sqs"

  sqs_name = "${var.prefix}spring-connection"
}


# Implementacion del usuario IAM
# 
# Descripcion: Este modulo se utiliza para configurar el usuario IAM 
# que se usara para la conexion vía SDK, incluyendo sus claves de acceso.
#
# Variables:
# sqs_policy_json: politica de sqs que se le aplicara al usuario IAM

module "iam" {
  source = "./modules/iam"

  sqs_policy_json = module.sqs.sqs_policy_json

}
