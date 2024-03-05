resource "aws_sqs_queue" "sqs_queue" {
  name                       = var.sqs_name
  delay_seconds              = 0
  visibility_timeout_seconds = 30
  max_message_size           = 2048
  message_retention_seconds  = 86400
  receive_wait_time_seconds  = 2
  sqs_managed_sse_enabled    = true



  tags = {

    Environment = "production"
  }
}