data "aws_iam_policy_document" "sqs_policy" {
  statement {
    sid    = "shsqsstatement"
    effect = "Allow"

    /*
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }*/

    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = [
      aws_sqs_queue.sqs_queue.arn
    ]
  }
}

resource "aws_sqs_queue_policy" "sh_sqs_policy" {
  queue_url = aws_sqs_queue.sqs_queue.id
  policy    = data.aws_iam_policy_document.sqs_policy.json
}
