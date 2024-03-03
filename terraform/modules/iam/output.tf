output "sqs_access_key_id" {
  sensitive = true
  value = aws_iam_access_key.sqs_connecion_key.id
}

output "sqs_secret_access_key" {
  sensitive = true
  value = aws_iam_access_key.sqs_connecion_key.secret
}

