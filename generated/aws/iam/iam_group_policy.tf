resource "aws_iam_group_policy" "tfer--micro_services_micro_services" {
  group = "micro_services"
  name  = "micro_services"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:*",
        "ecs:*",
        "sqs:*",
        "sns:*",
        "batch:*",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
