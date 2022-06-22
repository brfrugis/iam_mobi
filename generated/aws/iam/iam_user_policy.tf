resource "aws_iam_user_policy" "tfer--circle_ci_CircleCI_ECSRunTask" {
  name = "CircleCI_ECSRunTask"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ecs:RunTask",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "circle_ci"
}

resource "aws_iam_user_policy" "tfer--circle_ci_CircleCI_RDS" {
  name = "CircleCI_RDS"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "rds:DeleteDBClusterSnapshot",
        "rds:CreateDBClusterSnapshot"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:rds:*:825437374987:cluster:*",
        "arn:aws:rds:*:825437374987:cluster-snapshot:*"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": "rds:AddTagsToResource",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "circle_ci"
}

resource "aws_iam_user_policy" "tfer--circle_ci_ECSReadTaskDefinitionPolicy" {
  name = "ECSReadTaskDefinitionPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ecs:DescribeTaskDefinition",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "circle_ci"
}

resource "aws_iam_user_policy" "tfer--dingli_EKS-All" {
  name = "EKS-All"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "eks:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "dingli"
}
