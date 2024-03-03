output "sqs_queue_id" {
    value = aws_sqs_queue.sqs_queue.id
}

output "sqs_policy_json" {
  sensitive = true
  value = data.aws_iam_policy_document.sqs_policy.json
}

output "sqs_queue_url" {
  sensitive = true
  value = aws_sqs_queue.sqs_queue.url
}
  
output "sqs_queue_name" {
  sensitive = true
  value = aws_sqs_queue.sqs_queue.name
}