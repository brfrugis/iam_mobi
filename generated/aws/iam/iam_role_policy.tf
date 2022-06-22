resource "aws_iam_role_policy" "tfer--16bwcc-a7g55jj_16bwcc-a7g55jj-policy" {
  name = "16bwcc-a7g55jj-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::16bwcc-uk5s8c/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "16bwcc-a7g55jj"
}

resource "aws_iam_role_policy" "tfer--16bwcc-b3e0lx_16bwcc-b3e0lx-policy" {
  name = "16bwcc-b3e0lx-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::16bwcc-uk5s8c/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "16bwcc-b3e0lx"
}

resource "aws_iam_role_policy" "tfer--16bwcc-w0ra6r_16bwcc-w0ra6r-policy" {
  name = "16bwcc-w0ra6r-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::16bwcc-uk5s8c/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "16bwcc-w0ra6r"
}

resource "aws_iam_role_policy" "tfer--6sy55r8-a9pbajn_6sy55r8-a9pbajn-policy" {
  name = "6sy55r8-a9pbajn-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::6sy55r8-xi7rgpo/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "6sy55r8-a9pbajn"
}

resource "aws_iam_role_policy" "tfer--6sy55r8-db1ywul_6sy55r8-db1ywul-policy" {
  name = "6sy55r8-db1ywul-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::6sy55r8-xi7rgpo/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "6sy55r8-db1ywul"
}

resource "aws_iam_role_policy" "tfer--AWS-CodePipeline-Service_oneClick_AWS-CodePipeline-Service_1522865830712" {
  name = "oneClick_AWS-CodePipeline-Service_1522865830712"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline*",
        "arn:aws:s3:::elasticbeanstalk*"
      ]
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-CodePipeline-Service"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-StackSet-Local-AdministrationRole_AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole" {
  name = "AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:*:iam::*:role/AWS-QuickSetup-StackSet-Local-ExecutionRole"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-StackSet-Local-AdministrationRole"
}

resource "aws_iam_role_policy" "tfer--Cognito_MobiUsersAuth_Role_oneClick_Cognito_MobiUsersAuth_Role_1483063394644" {
  name = "oneClick_Cognito_MobiUsersAuth_Role_1483063394644"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "mobileanalytics:PutEvents",
        "cognito-sync:*",
        "cognito-identity:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "Cognito_MobiUsersAuth_Role"
}

resource "aws_iam_role_policy" "tfer--Cognito_MobiUsersUnauth_Role_oneClick_Cognito_MobiUsersUnauth_Role_1483063394645" {
  name = "oneClick_Cognito_MobiUsersUnauth_Role_1483063394645"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "mobileanalytics:PutEvents",
        "cognito-sync:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "Cognito_MobiUsersUnauth_Role"
}

resource "aws_iam_role_policy" "tfer--HelloWorldFunction-role-sqhbv8z9_HelloWorldFunction" {
  name = "HelloWorldFunction"

  policy = <<POLICY
{\r
\"Version\": \"2012-10-17\",\r
\"Statement\": [\r
    {\r
        \"Sid\": \"VisualEditor0\",\r
        \"Effect\": \"Allow\",\r
        \"Action\": [\r
            \"dynamodb:PutItem\",\r
            \"dynamodb:DeleteItem\",\r
            \"dynamodb:GetItem\",\r
            \"dynamodb:Scan\",\r
            \"dynamodb:Query\",\r
            \"dynamodb:UpdateItem\"\r
        ],\r
        \"Resource\": \"arn:aws:dynamodb:us-west-2:825437374987:table/HelloWorldDatabase\"\r
    }\r
    ]\r
}
POLICY

  role = "HelloWorldFunction-role-sqhbv8z9"
}

resource "aws_iam_role_policy" "tfer--SNSFailureFeedback_oneClick_SNSFailureFeedback_1490812130458" {
  name = "oneClick_SNSFailureFeedback_1490812130458"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:PutMetricFilter",
        "logs:PutRetentionPolicy"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "SNSFailureFeedback"
}

resource "aws_iam_role_policy" "tfer--SNSSuccessFeedback_oneClick_SNSSuccessFeedback_1490812130457" {
  name = "oneClick_SNSSuccessFeedback_1490812130457"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:PutMetricFilter",
        "logs:PutRetentionPolicy"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "SNSSuccessFeedback"
}

resource "aws_iam_role_policy" "tfer--SNSSuccessFeedback_oneClick_SNSSuccessFeedback_1507568464438" {
  name = "oneClick_SNSSuccessFeedback_1507568464438"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:PutMetricFilter",
        "logs:PutRetentionPolicy"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "SNSSuccessFeedback"
}

resource "aws_iam_role_policy" "tfer--amplify-login-lambda-c47df780_Amplify-backend" {
  name = "Amplify-backend"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "amplifybackend:GetToken",
        "amplifybackend:DeleteToken"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:amplifybackend:*:*:/backend/*"
    },
    {
      "Action": [
        "amplify:GetApp"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "amplify-login-lambda-c47df780"
}

resource "aws_iam_role_policy" "tfer--aws-controltower-CloudWatchLogsRole_cloudtrail-policy" {
  name = "cloudtrail-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogStream",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:log-group:aws-controltower/CloudTrailLogs:*",
      "Sid": "AWSCloudTrailCreateLogStream"
    },
    {
      "Action": "logs:PutLogEvents",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:log-group:aws-controltower/CloudTrailLogs:*",
      "Sid": "AWSCloudTrailPutLogEvents"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "aws-controltower-CloudWatchLogsRole"
}

resource "aws_iam_role_policy" "tfer--aws-controltower-ForwardSnsNotificationRole_sns" {
  name = "sns"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sns:publish"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sns:*:452152601211:aws-controltower-AggregateSecurityNotifications"
    }
  ]
}
POLICY

  role = "aws-controltower-ForwardSnsNotificationRole"
}

resource "aws_iam_role_policy" "tfer--codebuild_terraform-20190607210958311500000001" {
  name = "terraform-20190607210958311500000001"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    },
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DescribeDhcpOptions",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeSubnets",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeVpcs"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "codebuild"
}

resource "aws_iam_role_policy" "tfer--codepipeline_codepipeline" {
  name = "codepipeline"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:*",
        "ec2:*",
        "iam:PassRole",
        "codepipeline:*",
        "ecs:*",
        "ecr:*",
        "lambda:*",
        "codedeploy:*",
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "codepipeline"
}

resource "aws_iam_role_policy" "tfer--eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN_eksctl-staging-cluster-cluster-PolicyCloudWatchMetrics" {
  name = "eksctl-staging-cluster-cluster-PolicyCloudWatchMetrics"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN"
}

resource "aws_iam_role_policy" "tfer--eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN_eksctl-staging-cluster-cluster-PolicyNLB" {
  name = "eksctl-staging-cluster-cluster-PolicyNLB"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "elasticloadbalancing:*",
        "ec2:CreateSecurityGroup",
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN"
}

resource "aws_iam_role_policy" "tfer--lambda-es-execution-role_es-intermodal-routing-access" {
  name = "es-intermodal-routing-access"

  policy = <<POLICY
{\r
    \"Version\": \"2012-10-17\",\r
    \"Statement\": [\r
        {\r
            \"Action\": [\r
                \"es:*\"\r
            ],\r
            \"Effect\": \"Allow\",\r
            \"Resource\": \"arn:aws:es:us-east-1:825437374987:domain/intermodal-routing/*\"\r
        }\r
    ]\r
}
POLICY

  role = "lambda-es-execution-role"
}

resource "aws_iam_role_policy" "tfer--lambda_basic_execution_oneClick_lambda_basic_execution_1485114895835" {
  name = "oneClick_lambda_basic_execution_1485114895835"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:*:*:*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda_basic_execution"
}

resource "aws_iam_role_policy" "tfer--lambda_w_S3_oneClick_lambda_basic_execution_1485530778262" {
  name = "oneClick_lambda_basic_execution_1485530778262"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "logs:CreateLogStream",
        "logs:CreateLogGroup",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:*:*:*",
        "arn:aws:s3:::*"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda_w_S3"
}

resource "aws_iam_role_policy" "tfer--nbuu1a-2wc5zc_nbuu1a-2wc5zc-policy" {
  name = "nbuu1a-2wc5zc-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::nbuu1a-uf66yvu/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "nbuu1a-2wc5zc"
}

resource "aws_iam_role_policy" "tfer--nbuu1a-prufk18_nbuu1a-prufk18-policy" {
  name = "nbuu1a-prufk18-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::nbuu1a-uf66yvu/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "nbuu1a-prufk18"
}

resource "aws_iam_role_policy" "tfer--nbuu1a-wqtofz_nbuu1a-wqtofz-policy" {
  name = "nbuu1a-wqtofz-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::nbuu1a-uf66yvu/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "nbuu1a-wqtofz"
}

resource "aws_iam_role_policy" "tfer--ot47ym-51pc8g_ot47ym-51pc8g-policy" {
  name = "ot47ym-51pc8g-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::ot47ym-3s4qf8p/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ot47ym-51pc8g"
}

resource "aws_iam_role_policy" "tfer--ot47ym-vlk2lnj_ot47ym-vlk2lnj-policy" {
  name = "ot47ym-vlk2lnj-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::ot47ym-3s4qf8p/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ot47ym-vlk2lnj"
}

resource "aws_iam_role_policy" "tfer--sls-drivergpstracking-dev-eu-central-1-lambdaRole_sls-drivergpstracking-dev-lambda" {
  name = "sls-drivergpstracking-dev-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-drivergpstracking-dev*:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-drivergpstracking-dev*:*:*"
      ]
    },
    {
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:*:825437374987:table/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sls-drivergpstracking-dev-eu-central-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--sls-tui-pre-eu-central-1-lambdaRole_sls-tui-pre-lambda" {
  name = "sls-tui-pre-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-pre*:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-pre*:*:*"
      ]
    },
    {
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:*:825437374987:table/*"
    },
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py"
    },
    {
      "Action": [
        "sqs:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sqs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:eu-central-1:825437374987:pre_md_update_queue"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sls-tui-pre-eu-central-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--sls-tui-prod-eu-central-1-lambdaRole_sls-tui-prod-lambda" {
  name = "sls-tui-prod-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-prod*:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-prod*:*:*"
      ]
    },
    {
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:*:825437374987:table/*"
    },
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py"
    },
    {
      "Action": [
        "sqs:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sqs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:eu-central-1:825437374987:prod_md_update_queue"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sls-tui-prod-eu-central-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--sls-tui-staging-eu-central-1-lambdaRole_sls-tui-staging-lambda" {
  name = "sls-tui-staging-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-staging*:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-staging*:*:*"
      ]
    },
    {
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:*:825437374987:table/*"
    },
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py"
    },
    {
      "Action": [
        "sqs:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sqs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:eu-central-1:825437374987:staging_md_update_queue"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sls-tui-staging-eu-central-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--sls-tui-uat-eu-central-1-lambdaRole_sls-tui-uat-lambda" {
  name = "sls-tui-uat-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-uat*:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-uat*:*:*"
      ]
    },
    {
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:*:825437374987:table/*"
    },
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sls-tui-uat-eu-central-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--us-east-1_yCoNrnkbE_Full-access_Full-access-Policy" {
  name = "Full-access-Policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudformation:DeleteStackSet",
        "cloudformation:DescribeStackSet",
        "cloudformation:UpdateStackSet"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudformation:*:*:stack/amplify-*"
      ],
      "Sid": "CLICloudformationPolicy"
    },
    {
      "Action": [
        "cognito-idp:SetUserPoolMfaConfig"
      ],
      "Condition": {
        "ForAnyValue:StringEquals": {
          "aws:CalledVia": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CLIManageviaCFNPolicy"
    },
    {
      "Action": [
        "lambda:GetLayerVersionByArn",
        "rekognition:DescribeCollection",
        "logs:DescribeLogStreams",
        "logs:GetLogEvents",
        "lex:GetBot",
        "lex:GetBuiltinIntent",
        "lex:GetBuiltinIntents",
        "lex:GetBuiltinSlotTypes",
        "lambda:InvokeFunction",
        "cognito-idp:ListIdentityProviders"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CLISDKCalls"
    },
    {
      "Action": [
        "ssm:DeleteParameter",
        "ssm:DeleteParameters",
        "ssm:GetParameter",
        "ssm:GetParameters",
        "ssm:GetParametersByPath",
        "ssm:PutParameter"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:*:*:parameter/amplify/*",
      "Sid": "CLISSMSDKCalls"
    },
    {
      "Action": [
        "geo:*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "GeoPowerUser"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "us-east-1_yCoNrnkbE_Full-access"
}

resource "aws_iam_role_policy" "tfer--us-east-1_yCoNrnkbE_Manage-only_Amplify-Admin-ManageOnly-Policy" {
  name = "Amplify-Admin-ManageOnly-Policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "amplifybackend:getBackend*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AmplifyBackendManageOnlyPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "us-east-1_yCoNrnkbE_Manage-only"
}
