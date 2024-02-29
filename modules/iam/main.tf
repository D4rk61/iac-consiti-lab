// creacion de un grupo para el ususario IAM 
// realizar conexiones SQS

resource "aws_iam_group" "sqs_connection_group" {
  name = "sqs_connection"
  path = "/"
}

resource "aws_iam_user" "sqs_connection_user" {
  name = "sqs_connection_user"
  path = "/"

}

// obteniendo las credenciales de conexion

resource "aws_iam_access_key" "sqs_connecion_key" {
  user = aws_iam_user.sqs_connection_user.name
}

// asignando el grupo al usuario

resource "aws_iam_group_membership" "sqs_connection_membership" {
  name = "sqs_connection_membership"

  users = [
    aws_iam_user.sqs_connection_user.name
  ]

  group = aws_iam_group.sqs_connection_group.name
}

// asignando permisos sqs para el usuario

resource "aws_iam_user_policy" "sqs_connection_policy" {
  name = "sqs_connection_policy"
  user = aws_iam_user.sqs_connection_user.name

  // de alguna forma traer la olitica creada en el modulo SQS
  policy = var.sqs_policy_json  
}

resource "aws_iam_user_policy_attachment" "sqs_connection_user_policy" {
  user       = aws_iam_user.sqs_connection_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
}