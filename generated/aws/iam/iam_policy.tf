resource "aws_iam_policy" "AWS-Chatbot-NotificationsOnly-Policy-8f174c81-4a71-40d9-bcbb-3c3172992d77" {
  description = "NotificationsOnly policy for AWS Chatbot"
  name        = "AWS-Chatbot-NotificationsOnly-Policy-8f174c81-4a71-40d9-bcbb-3c3172992d77"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "cloudwatch:List*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSCodePipelineServiceRole-us-east-1-stadium-simulation" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-us-east-1-stadium-simulation"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
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
        "codedeploy:GetApplication",
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
        "codestar-connections:UseConnection"
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
        "ecs:*"
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
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSFISServiceRole" {
  description = "Service Role for running FIS Experiments"
  name        = "AWSFISServiceRole"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeInstances",
        "ecs:DescribeClusters",
        "ecs:ListContainerInstances",
        "eks:DescribeNodegroup",
        "iam:ListRoles",
        "rds:DescribeDBInstances",
        "rds:DescribeDbClusters",
        "ssm:ListCommands"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowFISExperimentRoleReadOnly"
    },
    {
      "Action": [
        "ec2:RebootInstances",
        "ec2:StopInstances",
        "ec2:StartInstances",
        "ec2:TerminateInstances"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*:*:instance/*",
      "Sid": "AllowFISExperimentRoleEC2Actions"
    },
    {
      "Action": [
        "ecs:UpdateContainerInstancesState",
        "ecs:ListContainerInstances"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecs:*:*:container-instance/*",
      "Sid": "AllowFISExperimentRoleECSActions"
    },
    {
      "Action": [
        "ec2:TerminateInstances"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*:*:instance/*",
      "Sid": "AllowFISExperimentRoleEKSActions"
    },
    {
      "Action": [
        "fis:InjectApiInternalError",
        "fis:InjectApiThrottleError",
        "fis:InjectApiUnavailableError"
      ],
      "Effect": "Allow",
      "Resource": "arn:*:fis:*:*:experiment/*",
      "Sid": "AllowFISExperimentRoleFISActions"
    },
    {
      "Action": [
        "rds:RebootDBInstance"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:rds:*:*:db:*",
      "Sid": "AllowFISExperimentRoleRDSReboot"
    },
    {
      "Action": [
        "rds:FailoverDBCluster"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:rds:*:*:cluster:*",
      "Sid": "AllowFISExperimentRoleRDSFailOver"
    },
    {
      "Action": [
        "ssm:SendCommand"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:*:*:instance/*",
        "arn:aws:ssm:*:*:document/*"
      ],
      "Sid": "AllowFISExperimentRoleSSMSendCommand"
    },
    {
      "Action": [
        "ssm:CancelCommand"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowFISExperimentRoleSSMCancelCommand"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSGlueServiceRole-AmexPoiDataCrawler" {
  description = "This policy will be used for Glue Crawler and Job execution. Please do NOT delete!"
  name        = "AWSGlueServiceRole-AmexPoiDataCrawler"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::amex-poi-data*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSGlueServiceRole-AmexPoiDataCrawlerParquet" {
  description = "This policy will be used for Glue Crawler and Job execution. Please do NOT delete!"
  name        = "AWSGlueServiceRole-AmexPoiDataCrawlerParquet"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::amex-poi-data*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSGlueServiceRole-destinationCrawler" {
  description = "This policy will be used for Glue Crawler and Job execution. Please do NOT delete!"
  name        = "AWSGlueServiceRole-destinationCrawler"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::amex-destination-data*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-0699f6c4-2c33-4dbe-8eee-d76cd5050fc2" {
  name = "AWSLambdaBasicExecutionRole-0699f6c4-2c33-4dbe-8eee-d76cd5050fc2"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/driver_gps_tracking:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-11c7cf9b-51ee-484c-85b2-69a599bd7e52" {
  name = "AWSLambdaBasicExecutionRole-11c7cf9b-51ee-484c-85b2-69a599bd7e52"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/bluesky-authenticator:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/us-east-1.bluesky-authenticator:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/us-west-1.bluesky-authenticator:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-1caa90f2-748d-4dcf-9237-185da14d89ad" {
  name = "AWSLambdaBasicExecutionRole-1caa90f2-748d-4dcf-9237-185da14d89ad"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/TransitDataAlertToOpsgenie:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-314862f7-05f4-4fb7-8824-0c6d5857c8b4" {
  name = "AWSLambdaBasicExecutionRole-314862f7-05f4-4fb7-8824-0c6d5857c8b4"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/testlambda:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-38ce514b-b80c-4d73-a5fd-463951e264bb" {
  name = "AWSLambdaBasicExecutionRole-38ce514b-b80c-4d73-a5fd-463951e264bb"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sis-tui-staging-masterdata_updater:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-535ad891-06f1-4983-8793-5a0035e5e00b" {
  name = "AWSLambdaBasicExecutionRole-535ad891-06f1-4983-8793-5a0035e5e00b"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-staging-masterdata_updater:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-5d5cb460-9171-43d7-9824-fa7213d04278" {
  name = "AWSLambdaBasicExecutionRole-5d5cb460-9171-43d7-9824-fa7213d04278"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/six-flags-park-data-authorizer:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-750fe2d0-b0a1-4a9b-a1e0-f06825e9b01e" {
  name = "AWSLambdaBasicExecutionRole-750fe2d0-b0a1-4a9b-a1e0-f06825e9b01e"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-staging-driver_gps_tracking:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-94078351-b08e-46ae-a00d-da98da8d086e" {
  name = "AWSLambdaBasicExecutionRole-94078351-b08e-46ae-a00d-da98da8d086e"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/tui-masterdata-updater:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-9851f474-c309-41dc-8356-7a1f7d3086bc" {
  name = "AWSLambdaBasicExecutionRole-9851f474-c309-41dc-8356-7a1f7d3086bc"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sis-tui-staging-driver_gps_tracking:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-aa07d6b2-4670-4673-bd0f-98a1e0e851fd" {
  name = "AWSLambdaBasicExecutionRole-aa07d6b2-4670-4673-bd0f-98a1e0e851fd"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/TestFunction:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-b11af1e5-9370-4c37-ace5-35139195644b" {
  name = "AWSLambdaBasicExecutionRole-b11af1e5-9370-4c37-ace5-35139195644b"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/MonitoringTestAlertToOpsgenie:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-d5e03648-d830-4fb2-93ee-397eb0f94b13" {
  name = "AWSLambdaBasicExecutionRole-d5e03648-d830-4fb2-93ee-397eb0f94b13"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-staging-planner_trigger:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-f10ca15f-5306-4a24-ae00-246b52281049" {
  name = "AWSLambdaBasicExecutionRole-f10ca15f-5306-4a24-ae00-246b52281049"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/lambda/rm-data-updater:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaBasicExecutionRole-f9eded41-771f-4d29-8416-c117dca8a387" {
  name = "AWSLambdaBasicExecutionRole-f9eded41-771f-4d29-8416-c117dca8a387"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-west-2:825437374987:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-west-2:825437374987:log-group:/aws/lambda/HelloWorldFunction:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaMicroserviceExecutionRole-0c0dae9b-d31d-4615-b6ae-feeb117f2d87" {
  name = "AWSLambdaMicroserviceExecutionRole-0c0dae9b-d31d-4615-b6ae-feeb117f2d87"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Scan",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:825437374987:table/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaSNSTopicDestinationExecutionRole-46e62a79-2ce7-4d63-851a-6e40660c457c" {
  name = "AWSLambdaSNSTopicDestinationExecutionRole-46e62a79-2ce7-4d63-851a-6e40660c457c"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sns:Publish",
      "Effect": "Allow",
      "Resource": "arn:aws:sns:us-east-1:825437374987:ExpediaDetailsDataGeneration"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaSNSTopicDestinationExecutionRole-5b9cfb2f-ce8e-4ece-b6b8-b6b6d9f7f54d" {
  name = "AWSLambdaSNSTopicDestinationExecutionRole-5b9cfb2f-ce8e-4ece-b6b8-b6b6d9f7f54d"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sns:Publish",
      "Effect": "Allow",
      "Resource": "arn:aws:sns:us-east-1:825437374987:ExpediaMergeDetailsGeneration"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaSNSTopicDestinationExecutionRole-76d87a24-575d-4f3a-80d8-0ac45ab45456" {
  name = "AWSLambdaSNSTopicDestinationExecutionRole-76d87a24-575d-4f3a-80d8-0ac45ab45456"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sns:Publish",
      "Effect": "Allow",
      "Resource": "arn:aws:sns:us-east-1:825437374987:ExpediaDataDownload"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaSNSTopicDestinationExecutionRole-c5a671ae-2b29-4220-ba9c-8cc51a5fd8b7" {
  name = "AWSLambdaSNSTopicDestinationExecutionRole-c5a671ae-2b29-4220-ba9c-8cc51a5fd8b7"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sns:Publish",
      "Effect": "Allow",
      "Resource": "arn:aws:sns:us-east-1:825437374987:ExpediaDataImportTopic"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaSNSTopicDestinationExecutionRole-f39dc47c-fd20-4dc3-b8f8-40eac7380608" {
  name = "AWSLambdaSNSTopicDestinationExecutionRole-f39dc47c-fd20-4dc3-b8f8-40eac7380608"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sns:Publish",
      "Effect": "Allow",
      "Resource": "arn:aws:sns:us-east-1:825437374987:ExpediaSummaryDataGeneration"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AWSLambdaVPCAccessExecutionRole-88cfb39c-dcf2-4f48-9270-cdcb56322f2a" {
  name = "AWSLambdaVPCAccessExecutionRole-88cfb39c-dcf2-4f48-9270-cdcb56322f2a"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeNetworkInterfaces"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AmazonPersonalize-ExecutionPolicy-1617905147659" {
  name = "AmazonPersonalize-ExecutionPolicy-1617905147659"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::deem-data"
      ]
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::deem-data/*"
      ]
    },
    {
      "Action": [
        "kms:Encrypt",
        "kms:Decrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*",
        "kms:DescribeKey"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:kms:us-east-1:825437374987:key/*",
      "Sid": "KMSAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AmazonRedshift-CommandsAccessPolicy-20220127T093536" {
  name = "AmazonRedshift-CommandsAccessPolicy-20220127T093536"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:GetBucketAcl",
        "s3:GetBucketCors",
        "s3:GetEncryptionConfiguration",
        "s3:GetBucketLocation",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:ListMultipartUploadParts",
        "s3:ListBucketMultipartUploads",
        "s3:PutObject",
        "s3:PutBucketAcl",
        "s3:PutBucketCors",
        "s3:DeleteObject",
        "s3:AbortMultipartUpload",
        "s3:CreateBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::redshift/*",
        "arn:aws:s3:::redshift"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AmazonSSMExplorerExportRolePolicy" {
  name = "AmazonSSMExplorerExportRolePolicy"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::mobi-systems-logs/*"
      ]
    },
    {
      "Action": [
        "s3:GetBucketAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::mobi-systems-logs"
      ]
    },
    {
      "Action": [
        "sns:Publish"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sns:eu-central-1:825437374987:ExportEC2AuditEU",
        "arn:aws:sns:us-east-1:825437374987:ExportEC2Audit"
      ]
    },
    {
      "Action": [
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:PutLogEvents",
        "logs:CreateLogStream"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    },
    {
      "Action": [
        "ssm:GetOpsSummary"
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
}

resource "aws_iam_policy" "AmazonSageMaker-ExecutionPolicy-20210628T231528" {
  name = "AmazonSageMaker-ExecutionPolicy-20210628T231528"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::deem-data"
      ]
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::deem-data/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AmazonSageMaker-ExecutionPolicy-20220427T111683" {
  name = "AmazonSageMaker-ExecutionPolicy-20220427T111683"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "AmazonSageMakerServiceCatalogProductsUseRole-20210628T231683" {
  name = "AmazonSageMakerServiceCatalogProductsUseRole-20210628T231683"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:cloudformation:*:*:stack/sagemaker-*"
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
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
      "Resource": [
        "arn:aws:codebuild:*:*:project/sagemaker-*",
        "arn:aws:codebuild:*:*:build/sagemaker-*"
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
      "Resource": "arn:aws:codecommit:*:*:sagemaker-*"
    },
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codepipeline:*:*:sagemaker-*"
    },
    {
      "Action": [
        "ec2:DescribeRouteTables"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:Describe*",
        "ecr:GetAuthorizationToken",
        "ecr:GetDownloadUrlForLayer"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:BatchDeleteImage",
        "ecr:CompleteLayerUpload",
        "ecr:CreateRepository",
        "ecr:DeleteRepository",
        "ecr:InitiateLayerUpload",
        "ecr:PutImage",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ecr:*:*:repository/sagemaker-*"
      ]
    },
    {
      "Action": [
        "events:DeleteRule",
        "events:DescribeRule",
        "events:PutRule",
        "events:PutTargets",
        "events:RemoveTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:events:*:*:rule/sagemaker-*"
      ]
    },
    {
      "Action": [
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:firehose:*:*:deliverystream/sagemaker-*"
    },
    {
      "Action": [
        "glue:BatchCreatePartition",
        "glue:BatchDeletePartition",
        "glue:BatchDeleteTable",
        "glue:BatchDeleteTableVersion",
        "glue:BatchGetPartition",
        "glue:CreateDatabase",
        "glue:CreatePartition",
        "glue:CreateTable",
        "glue:DeletePartition",
        "glue:DeleteTable",
        "glue:DeleteTableVersion",
        "glue:GetDatabase",
        "glue:GetPartition",
        "glue:GetPartitions",
        "glue:GetTable",
        "glue:GetTables",
        "glue:GetTableVersion",
        "glue:GetTableVersions",
        "glue:SearchTables",
        "glue:UpdatePartition",
        "glue:UpdateTable"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:glue:*:*:catalog",
        "arn:aws:glue:*:*:database/default",
        "arn:aws:glue:*:*:database/global_temp",
        "arn:aws:glue:*:*:database/sagemaker-*",
        "arn:aws:glue:*:*:table/sagemaker-*",
        "arn:aws:glue:*:*:tableVersion/sagemaker-*"
      ]
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::*:role/service-role/AmazonSageMakerServiceCatalogProductsUse*"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:*:*:function:sagemaker-*"
      ]
    },
    {
      "Action": [
        "logs:CreateLogDelivery",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:DeleteLogDelivery",
        "logs:Describe*",
        "logs:GetLogDelivery",
        "logs:GetLogEvents",
        "logs:ListLogDeliveries",
        "logs:PutLogEvents",
        "logs:PutResourcePolicy",
        "logs:UpdateLogDelivery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:CreateBucket",
        "s3:DeleteBucket",
        "s3:GetBucketAcl",
        "s3:GetBucketCors",
        "s3:GetBucketLocation",
        "s3:ListAllMyBuckets",
        "s3:ListBucket",
        "s3:ListBucketMultipartUploads",
        "s3:PutBucketCors"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::aws-glue-*",
        "arn:aws:s3:::sagemaker-*"
      ]
    },
    {
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::aws-glue-*",
        "arn:aws:s3:::sagemaker-*"
      ]
    },
    {
      "Action": [
        "sagemaker:*"
      ],
      "Effect": "Allow",
      "NotResource": [
        "arn:aws:sagemaker:*:*:domain/*",
        "arn:aws:sagemaker:*:*:user-profile/*",
        "arn:aws:sagemaker:*:*:app/*",
        "arn:aws:sagemaker:*:*:flow-definition/*"
      ]
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:DescribeStateMachineForExecution",
        "states:GetExecutionHistory",
        "states:ListExecutions",
        "states:ListTagsForResource",
        "states:StartExecution",
        "states:StopExecution",
        "states:TagResource",
        "states:UntagResource",
        "states:UpdateStateMachine"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:states:*:*:stateMachine:sagemaker-*",
        "arn:aws:states:*:*:execution:sagemaker-*:*"
      ]
    },
    {
      "Action": [
        "states:ListStateMachines"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CircleCI_CloudFormation_IAM" {
  name = "CircleCI_CloudFormation_IAM"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudformation:CreateUploadBucket",
        "cloudformation:RegisterType",
        "cloudformation:DescribeStackDriftDetectionStatus",
        "cloudformation:ListExports",
        "cloudformation:ListStacks",
        "cloudformation:SetTypeDefaultVersion",
        "cloudformation:DescribeType",
        "cloudformation:ListImports",
        "cloudformation:ListTypes",
        "cloudformation:DescribeTypeRegistration",
        "cloudformation:DeregisterType",
        "cloudformation:ListTypeRegistrations",
        "cloudformation:EstimateTemplateCost",
        "cloudformation:DescribeAccountLimits",
        "cloudformation:CreateStackSet",
        "cloudformation:ValidateTemplate",
        "cloudformation:ListTypeVersions"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "cloudformation:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudformation:*:825437374987:stack/*/*",
        "arn:aws:cloudformation:*:825437374987:stackset/*:*"
      ],
      "Sid": "VisualEditor1"
    },
    {
      "Action": [
        "iam:GetRole",
        "iam:CreateRole",
        "iam:PutRolePolicy",
        "iam:PassRole",
        "iam:DeleteRole"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::825437374987:role/sls*",
      "Sid": "VisualEditor2"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CircleCI_CloudWatchLogs_CloudWatchEvents" {
  name = "CircleCI_CloudWatchLogs_CloudWatchEvents"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:DeleteLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:*:825437374987:log-group:*"
    },
    {
      "Action": [
        "events:PutRule",
        "events:DescribeRule",
        "events:DeleteRule",
        "events:RemoveTargets",
        "events:PutTargets"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:events:eu-central-1:825437374987:rule/sls*"
    },
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:tui-cps-secrets"
      ]
    },
    {
      "Action": [
        "iam:GetRole",
        "iam:CreateRole",
        "iam:PutRolePolicy"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::825437374987:role/sls*"
    },
    {
      "Action": [
        "sts:AssumeRole"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::402564797671:role/dx-test-role-kinesis_transfer_booking-01"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CircleCI_CodeDeploy" {
  name = "CircleCI_CodeDeploy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codedeploy:RegisterApplicationRevision",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetApplication"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codedeploy:us-east-1:825437374987:application:ServiceLocator",
        "arn:aws:codedeploy:us-east-1:825437374987:application:ProfileManager",
        "arn:aws:codedeploy:us-east-1:825437374987:application:RoutingEngine",
        "arn:aws:codedeploy:us-east-1:825437374987:application:RoutingEngineV2",
        "arn:aws:codedeploy:us-east-1:825437374987:application:RoutingEngineV3",
        "arn:aws:codedeploy:us-east-1:825437374987:application:Fleet",
        "arn:aws:codedeploy:us-east-1:825437374987:application:WebServer",
        "arn:aws:codedeploy:us-east-1:825437374987:application:Planner",
        "arn:aws:codedeploy:us-east-1:825437374987:application:PlannerWebInterface",
        "arn:aws:codedeploy:us-east-1:825437374987:application:Calendar",
        "arn:aws:codedeploy:us-east-1:825437374987:application:ExecutionMonitoring",
        "arn:aws:codedeploy:us-east-1:825437374987:application:TravelPlanner",
        "arn:aws:codedeploy:us-east-1:825437374987:application:MobilityDataRepository",
        "arn:aws:codedeploy:us-east-1:825437374987:application:IntermodalRouting",
        "arn:aws:codedeploy:us-east-1:825437374987:application:TripBrokering",
        "arn:aws:codedeploy:us-east-1:825437374987:application:REMS"
      ]
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:ServiceLocator/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:ProfileManager/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:RoutingEngine/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:RoutingEngineV2/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:RoutingEngineV3/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:WebServer/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:Planner/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:Fleet/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:PlannerWebInterface/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:Calendar/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:ExecutionMonitoring/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:TravelPlanner/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:MobilityDataRepository/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:IntermodalRouting/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:TripBrokering/*",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentgroup:REMS/*"
      ]
    },
    {
      "Action": [
        "codedeploy:GetDeploymentConfig"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentconfig:CodeDeployDefault.OneAtATime",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentconfig:CodeDeployDefault.HalfAtATime",
        "arn:aws:codedeploy:us-east-1:825437374987:deploymentconfig:CodeDeployDefault.AllAtOnce"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CircleCI_ECR" {
  description = "CircleCI_ECR"
  name        = "CircleCI_ECR"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ecr:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CircleCI_EKS" {
  description = "CircleCI_EKS"
  name        = "CircleCI_EKS"
  path        = "/"

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
}

resource "aws_iam_policy" "CircleCI_IAM" {
  name = "CircleCI_IAM"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:GetRole",
        "iam:CreateRole",
        "iam:PutRolePolicy"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::825437374987:role/sls*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CircleCI_Lambda" {
  name = "CircleCI_Lambda"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:UpdateFunctionCode",
        "lambda:ListVersionsByFunction",
        "lambda:GetFunction",
        "lambda:PublishVersion",
        "lambda:AddPermission",
        "lambda:UpdateFunctionConfiguration",
        "lambda:PutFunctionConcurrency",
        "lambda:DeleteFunctionConcurrency",
        "lambda:CreateEventSourceMapping",
        "lambda:GetEventSourceMapping",
        "lambda:UpdateEventSourceMapping",
        "lambda:RemovePermission",
        "lambda:ListTags"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CircleCI_S3" {
  name = "CircleCI_S3"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::*",
        "arn:aws:s3:::*/*"
      ],
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CloudWatchCreateLogStream" {
  description = "CreateLogGroup, CreateLogStream, PutLogEvents, DescribeLogStream"
  name        = "CloudWatchCreateLogStream"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogStreams"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:*:*:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildAttStadiumSimulation-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildAttStadiumSimulation-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildAttStadiumSimulation",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildAttStadiumSimulation:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:us-east-1:825437374987:report-group/BuildAttStadiumSimulation-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildFleetOptimization-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildFleetOptimization-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildFleetOptimization",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildFleetOptimization:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildIntermodalUserInterfaceStaging-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildIntermodalUserInterfaceStaging-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildIntermodalUserInterfaceStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildIntermodalUserInterfaceStaging:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildMobiGlobalUIStaging-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildMobiGlobalUIStaging-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiGlobalUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiGlobalUIStaging:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildPlanner-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildPlanner-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanner",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanner:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildPlannerStaging-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildPlannerStaging-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerStaging:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildPlannerUserInterfaceStaging-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildPlannerUserInterfaceStaging-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerUserInterfaceStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerUserInterfaceStaging:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildRiderscoreDashboard-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildRiderscoreDashboard-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildRiderscoreDashboard",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildRiderscoreDashboard:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:us-east-1:825437374987:report-group/BuildRiderscoreDashboard-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-BuildStadiumSimilation-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-BuildStadiumSimilation-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildStadiumSimilation",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildStadiumSimilation:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:us-east-1:825437374987:report-group/BuildStadiumSimilation-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildBasePolicy-test-project-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-test-project-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/test-project",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/test-project:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildCloudWatchLogsPolicy-BuildMobiGlobalUIStaging-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildCloudWatchLogsPolicy-BuildMobiGlobalUIStaging-us-east-1"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:build-mobi-global-ui-staging",
        "arn:aws:logs:us-east-1:825437374987:log-group:build-mobi-global-ui-staging:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildSecretsManagerPolicy-BuildRiderscoreDashboard-us-east-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildSecretsManagerPolicy-BuildRiderscoreDashboard-us-east-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:/CodeBuild/*",
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:docker-pw-J3LARY",
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:rm-redshift-ssh-key-enx2d3"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildServiceRolePolicy" {
  name = "CodeBuildServiceRolePolicy"
  path = "/"

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
      ],
      "Sid": "CloudWatchLogsPolicy"
    },
    {
      "Action": [
        "codecommit:GitPull"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "CodeCommitPolicy"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "S3GetObjectPolicy"
    },
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "S3PutObjectPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildTrustPolicy" {
  name = "CodeBuildTrustPolicy"
  path = "/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/intermodal-routing",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/intermodal-routing:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityDataRepository",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityDataRepository:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildProfileManager",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildProfileManager:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildProfileManagerStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildProfileManagerStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityPlanningInterface",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityPlanningInterface:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanningInterface",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanningInterface:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanningInterfaceStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanningInterfaceStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildTravelPlanningInterface",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildTravelPlanningInterface:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildFleetOptimization",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildFleetOptimization:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanner",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanner:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerUserInterface",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerUserInterface:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildIntermodalUserInterface",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildIntermodalUserInterface:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerUserInterfaceStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlannerUserInterfaceStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildIntermodalUserInterfaceStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildIntermodalUserInterfaceStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiGlobalUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiGlobalUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiGlobalUI",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiGlobalUI:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPatientHospitalCoordinationStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPatientHospitalCoordinationStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPatientHospitalCoordination",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPatientHospitalCoordination:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPatientHospitalCoordinationPA",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPatientHospitalCoordinationPA:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/RM-scheduler-staging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/RM-scheduler-staging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildRiderscoreDashboard",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildRiderscoreDashboard:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildAttStadiumSimulation",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildAttStadiumSimulation:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiAmexUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiAmexUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiAmexUI",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiAmexUI:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiBlueskyUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiBlueskyUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiTripUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiTripUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiTravelUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiTravelUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiNCLUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiNCLUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiMGMUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiMGMUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuilPostCovidTravelUIStaging",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuilPostCovidTravelUIStaging:*",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiTravelUI",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobiTravelUI:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:825437374987:parameter/CodeBuild/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildTrustPolicy-BuildFleetOptimization-1523556054486" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildTrustPolicy-BuildFleetOptimization-1523556054486"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildFleetOptimization",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildFleetOptimization:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:825437374987:parameter/CodeBuild/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildTrustPolicy-BuildMobilityDataRepository-1522856020105" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildTrustPolicy-BuildMobilityDataRepository-1522856020105"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityDataRepository",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityDataRepository:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:825437374987:parameter/CodeBuild/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildTrustPolicy-BuildMobilityPlanningInterface-1523636381447" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildTrustPolicy-BuildMobilityPlanningInterface-1523636381447"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityPlanningInterface",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildMobilityPlanningInterface:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:825437374987:parameter/CodeBuild/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildTrustPolicy-BuildPlanner-1523452884475" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildTrustPolicy-BuildPlanner-1523452884475"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanner",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildPlanner:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:825437374987:parameter/CodeBuild/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildTrustPolicy-BuildProfileManager-1538682991335" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildTrustPolicy-BuildProfileManager-1538682991335"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildProfileManager",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildProfileManager:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:825437374987:parameter/CodeBuild/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeBuildTrustPolicy-BuildTravelPlanningInterface-1523734756062" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildTrustPolicy-BuildTravelPlanningInterface-1523734756062"
  path        = "/service-role/"

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
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildTravelPlanningInterface",
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/codebuild/BuildTravelPlanningInterface:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:825437374987:parameter/CodeBuild/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "CodeDeploy-EC2-Permissions" {
  name = "CodeDeploy-EC2-Permissions"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:Get*",
        "s3:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::code-deploy-mobi/*",
        "arn:aws:s3:::aws-codedeploy-us-east-1/*",
        "arn:aws:s3:::aws-codedeploy-us-east-2/*",
        "arn:aws:s3:::aws-codedeploy-us-west-1/*",
        "arn:aws:s3:::aws-codedeploy-us-west-2/*",
        "arn:aws:s3:::aws-codedeploy-ca-central-1/*",
        "arn:aws:s3:::aws-codedeploy-eu-west-1/*",
        "arn:aws:s3:::aws-codedeploy-eu-west-2/*",
        "arn:aws:s3:::aws-codedeploy-eu-central-1/*",
        "arn:aws:s3:::aws-codedeploy-ap-northeast-1/*",
        "arn:aws:s3:::aws-codedeploy-ap-northeast-2/*",
        "arn:aws:s3:::aws-codedeploy-ap-southeast-1/*",
        "arn:aws:s3:::aws-codedeploy-ap-southeast-2/*",
        "arn:aws:s3:::aws-codedeploy-ap-south-1/*",
        "arn:aws:s3:::aws-codedeploy-sa-east-1/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "DatadogAWSIntegrationPolicy" {
  name = "DatadogAWSIntegrationPolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "autoscaling:Describe*",
        "budgets:ViewBudget",
        "cloudtrail:DescribeTrails",
        "cloudtrail:GetTrailStatus",
        "cloudtrail:LookupEvents",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "cloudwatch:List*",
        "dynamodb:list*",
        "dynamodb:describe*",
        "ec2:Describe*",
        "ec2:Get*",
        "ecs:Describe*",
        "ecs:List*",
        "elasticache:Describe*",
        "elasticache:List*",
        "elasticloadbalancing:Describe*",
        "elasticmapreduce:List*",
        "elasticmapreduce:Describe*",
        "es:ListTags",
        "es:ListDomainNames",
        "es:DescribeElasticsearchDomains",
        "kinesis:List*",
        "kinesis:Describe*",
        "lambda:List*",
        "logs:Get*",
        "logs:Describe*",
        "logs:FilterLogEvents",
        "logs:TestMetricFilter",
        "rds:Describe*",
        "rds:List*",
        "route53:List*",
        "s3:GetBucketTagging",
        "s3:ListAllMyBuckets",
        "ses:Get*",
        "sns:List*",
        "sns:Publish",
        "support:*",
        "tag:GetResources"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "Datadog_AWS_Web_Services_Integration_Policy" {
  description = "Policy for AWS Web Services Integration - not Fargate"
  name        = "Datadog_AWS_Web_Services_Integration_Policy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:GET",
        "autoscaling:Describe*",
        "budgets:ViewBudget",
        "cloudfront:GetDistributionConfig",
        "cloudfront:ListDistributions",
        "cloudtrail:DescribeTrails",
        "cloudtrail:GetTrailStatus",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "cloudwatch:List*",
        "codedeploy:List*",
        "codedeploy:BatchGet*",
        "directconnect:Describe*",
        "dynamodb:List*",
        "dynamodb:Describe*",
        "ec2:Describe*",
        "ecs:Describe*",
        "ecs:List*",
        "elasticache:Describe*",
        "elasticache:List*",
        "elasticfilesystem:DescribeFileSystems",
        "elasticfilesystem:DescribeTags",
        "elasticloadbalancing:Describe*",
        "elasticmapreduce:List*",
        "elasticmapreduce:Describe*",
        "es:ListTags",
        "es:ListDomainNames",
        "es:DescribeElasticsearchDomains",
        "health:DescribeEvents",
        "health:DescribeEventDetails",
        "health:DescribeAffectedEntities",
        "kinesis:List*",
        "kinesis:Describe*",
        "lambda:AddPermission",
        "lambda:GetPolicy",
        "lambda:List*",
        "lambda:RemovePermission",
        "logs:Get*",
        "logs:Describe*",
        "logs:FilterLogEvents",
        "logs:TestMetricFilter",
        "logs:PutSubscriptionFilter",
        "logs:DeleteSubscriptionFilter",
        "logs:DescribeSubscriptionFilters",
        "rds:Describe*",
        "rds:List*",
        "redshift:DescribeClusters",
        "redshift:DescribeLoggingStatus",
        "route53:List*",
        "s3:GetBucketLogging",
        "s3:GetBucketLocation",
        "s3:GetBucketNotification",
        "s3:GetBucketTagging",
        "s3:ListAllMyBuckets",
        "s3:PutBucketNotification",
        "ses:Get*",
        "sns:List*",
        "sns:Publish",
        "sqs:ListQueues",
        "support:*",
        "tag:GetResources",
        "tag:GetTagKeys",
        "tag:GetTagValues",
        "xray:BatchGetTraces",
        "xray:GetTraceSummaries"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "DisneyPOC" {
  description = "A example role for Disney POC test"
  name        = "DisneyPOC"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "cloudwatch:PutMetricData",
        "ec2:DescribeTags",
        "logs:DescribeLogStreams",
        "logs:CreateLogGroup",
        "logs:PutLogEvents",
        "ssm:GetParameter"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CloudWatchAgentServerPolicy"
    },
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::planning-problems-dev",
        "arn:aws:s3:::routing-responses-dev"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::planning-problems-dev/*",
        "arn:aws:s3:::routing-responses-dev/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "EKS-All" {
  description = "All EKS"
  name        = "EKS-All"
  path        = "/"

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
}

resource "aws_iam_policy" "EKSSecretsManagerPolicy-Applications" {
  name = "EKSSecretsManagerPolicy-Applications"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "secretsmanager:GetSecretValue",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:planner-web-interface-secrets",
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:intermodal-secrets",
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:mobility-data-repository-secrets",
        "arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets"
      ],
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "HelloWorldDynamoPolicy" {
  name = "HelloWorldDynamoPolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:PutItem",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-west-2:825437374987:table/HelloWorldDatabase",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "IAMSelfService" {
  name = "IAMSelfService"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:GetAccountPasswordPolicy",
        "iam:GetAccountSummary",
        "iam:ListVirtualMFADevices"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowViewAccountInfo"
    },
    {
      "Action": [
        "iam:ChangePassword",
        "iam:GetUser"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnPasswords"
    },
    {
      "Action": [
        "iam:CreateAccessKey",
        "iam:DeleteAccessKey",
        "iam:ListAccessKeys",
        "iam:UpdateAccessKey"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnAccessKeys"
    },
    {
      "Action": [
        "iam:DeleteSigningCertificate",
        "iam:ListSigningCertificates",
        "iam:UpdateSigningCertificate",
        "iam:UploadSigningCertificate"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnSigningCertificates"
    },
    {
      "Action": [
        "iam:DeleteSSHPublicKey",
        "iam:GetSSHPublicKey",
        "iam:ListSSHPublicKeys",
        "iam:UpdateSSHPublicKey",
        "iam:UploadSSHPublicKey"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnSSHPublicKeys"
    },
    {
      "Action": [
        "iam:CreateServiceSpecificCredential",
        "iam:DeleteServiceSpecificCredential",
        "iam:ListServiceSpecificCredentials",
        "iam:ResetServiceSpecificCredential",
        "iam:UpdateServiceSpecificCredential"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnGitCredentials"
    },
    {
      "Action": [
        "iam:CreateVirtualMFADevice",
        "iam:DeleteVirtualMFADevice"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:mfa/$${aws:username}",
      "Sid": "AllowManageOwnVirtualMFADevice"
    },
    {
      "Action": [
        "iam:DeactivateMFADevice",
        "iam:EnableMFADevice",
        "iam:ListMFADevices",
        "iam:ResyncMFADevice"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnUserMFA"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "InvokeLambdaPolicy" {
  name = "InvokeLambdaPolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "lambda:InvokeFunction",
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:825437374987:function:*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "KinesisCrossAccountTUI" {
  description = "Cross account access to TUI kinesis stream "
  name        = "KinesisCrossAccountTUI"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListStorageLensConfigurations",
        "s3:ListAccessPointsForObjectLambda",
        "s3:GetAccessPoint",
        "s3:PutAccountPublicAccessBlock",
        "s3:GetAccountPublicAccessBlock",
        "s3:ListAllMyBuckets",
        "s3:ListAccessPoints",
        "s3:ListJobs",
        "s3:PutStorageLensConfiguration",
        "s3:CreateJob",
        "sts:AssumeRoleWithWebIdentity"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::402564797671:role/dx-test-rol-mobi_integration-01",
      "Sid": "VisualEditor1"
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::797878043431:role/dx-prod-rol-mobi_integration-01",
      "Sid": "VisualEditor2"
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::541211063613:role/dx-pre-rol-mobi_integration-01",
      "Sid": "VisualEditor3"
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::825437374987:role/*",
      "Sid": "VisualEditor4"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::*",
        "arn:aws:s3-object-lambda:*:825437374987:accesspoint/*",
        "arn:aws:s3:*:825437374987:job/*",
        "arn:aws:s3:*:825437374987:accesspoint/*",
        "arn:aws:s3:*:825437374987:storage-lens/*"
      ],
      "Sid": "VisualEditor5"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*/*",
      "Sid": "VisualEditor6"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "KinesisCrossAccountTUIDriverLocation" {
  description = "Allows TUI to access driver location stream under Mobi AWS account. "
  name        = "KinesisCrossAccountTUIDriverLocation"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "kinesis:Get*",
        "kinesis:DescribeStream*",
        "kinesis:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kinesis:eu-central-1:825437374987:stream/tui-driver-location-stream"
      ]
    },
    {
      "Action": [
        "kinesis:ListStreams"
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
}

resource "aws_iam_policy" "KinesisFirehoseServicePolicy-mobi-six-flags-data-stream-us-east-1" {
  name = "KinesisFirehoseServicePolicy-mobi-six-flags-data-stream-us-east-1"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "glue:GetTable",
        "glue:GetTableVersion",
        "glue:GetTableVersions"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:glue:us-east-1:825437374987:catalog",
        "arn:aws:glue:us-east-1:825437374987:database/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
        "arn:aws:glue:us-east-1:825437374987:table/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:GetBucketLocation",
        "s3:GetObject",
        "s3:ListBucket",
        "s3:ListBucketMultipartUploads",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::mobi-six-flags-data-stream",
        "arn:aws:s3:::mobi-six-flags-data-stream/*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:GetFunctionConfiguration"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:825437374987:function:%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:GenerateDataKey",
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "s3.us-east-1.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:s3:arn": [
            "arn:aws:s3:::%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/*"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:825437374987:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:825437374987:log-group:/aws/kinesisfirehose/mobi-six-flags-data-stream:log-stream:*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "kinesis:DescribeStream",
        "kinesis:GetShardIterator",
        "kinesis:GetRecords",
        "kinesis:ListShards"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:kinesis:us-east-1:825437374987:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "kinesis.us-east-1.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:kinesis:arn": "arn:aws:kinesis:us-east-1:825437374987:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:825437374987:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "MetamanagementContainerRepositoryPermissions" {
  name = "MetamanagementContainerRepositoryPermissions"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:SetRepositoryPolicy",
        "ecr:DescribeRepositories",
        "ecr:ListTagsForResource",
        "ecr:DeleteRepositoryPolicy",
        "ecr:GetRepositoryPolicy"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "Nikhil" {
  name = "Nikhil"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "elasticloadbalancing:*",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAddresses",
        "ec2:DescribeInternetGateways",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeVpcs",
        "ec2:DescribeVpcClassicLink",
        "ec2:DescribeInstances",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DescribeClassicLinkInstances",
        "ec2:DescribeRouteTables",
        "cognito-idp:DescribeUserPoolClient"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "iam:CreateServiceLinkedRole",
      "Condition": {
        "StringEquals": {
          "iam:AWSServiceName": "elasticloadbalancing.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "elasticache:*",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:*",
        "cloudtrail:LookupEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "autoscaling:Describe*",
        "cloudwatch:*",
        "logs:*",
        "sns:*",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "iam:CreateServiceLinkedRole",
      "Condition": {
        "StringLike": {
          "iam:AWSServiceName": "events.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:role/aws-service-role/events.amazonaws.com/AWSServiceRoleForCloudWatchEvents*"
    },
    {
      "Action": [
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStackResources",
        "cloudformation:DescribeStacks",
        "cloudformation:GetTemplate",
        "cloudformation:ListStackResources",
        "cloudwatch:*",
        "cognito-identity:ListIdentityPools",
        "cognito-sync:GetCognitoEvents",
        "cognito-sync:SetCognitoEvents",
        "dynamodb:*",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeVpcs",
        "events:*",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRole",
        "iam:GetRolePolicy",
        "iam:ListAttachedRolePolicies",
        "iam:ListRolePolicies",
        "iam:ListRoles",
        "iam:PassRole",
        "iot:AttachPrincipalPolicy",
        "iot:AttachThingPrincipal",
        "iot:CreateKeysAndCertificate",
        "iot:CreatePolicy",
        "iot:CreateThing",
        "iot:CreateTopicRule",
        "iot:DescribeEndpoint",
        "iot:GetTopicRule",
        "iot:ListPolicies",
        "iot:ListThings",
        "iot:ListTopicRules",
        "iot:ReplaceTopicRule",
        "kinesis:DescribeStream",
        "kinesis:ListStreams",
        "kinesis:PutRecord",
        "kms:ListAliases",
        "lambda:*",
        "logs:*",
        "s3:*",
        "sns:ListSubscriptions",
        "sns:ListSubscriptionsByTopic",
        "sns:ListTopics",
        "sns:Publish",
        "sns:Subscribe",
        "sns:Unsubscribe",
        "sqs:ListQueues",
        "sqs:SendMessage",
        "tag:GetResources",
        "xray:PutTelemetryRecords",
        "xray:PutTraceSegments"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "OpsItem-CWE-RolePolicy" {
  name = "OpsItem-CWE-RolePolicy"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ssm:CreateOpsItem",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "POIGenerationTaskServerEFSAccess" {
  name = "POIGenerationTaskServerEFSAccess"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "elasticfilesystem:ModifyMountTargetSecurityGroups",
        "elasticfilesystem:PutAccountPreferences",
        "elasticfilesystem:CreateFileSystem",
        "elasticfilesystem:DescribeAccountPreferences",
        "elasticfilesystem:DescribeMountTargetSecurityGroups"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "elasticfilesystem:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:elasticfilesystem:us-east-1:825437374987:access-point/fsap-0246e4f78f0e4181e",
        "arn:aws:elasticfilesystem:us-east-1:825437374987:file-system/fs-0e5f6eee952ea4214"
      ],
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "POIGenerator-S3SecretsCloudWatchLogsPolicy" {
  name = "POIGenerator-S3SecretsCloudWatchLogsPolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "secretsmanager:GetSecretValue",
        "s3:PutObjectRetention",
        "s3:DeleteObjectVersion",
        "s3:ListBucketVersions",
        "s3:RestoreObject",
        "s3:PutObjectVersionTagging",
        "s3:ListBucket",
        "s3:PutObjectTagging",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::poi-generator-source-data/*",
        "arn:aws:s3:::poi-generator-source-data",
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:poi-generation-secrets-Qmgrje"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "logs:DescribeQueries",
        "logs:GetLogRecord",
        "logs:PutDestinationPolicy",
        "logs:StopQuery",
        "logs:TestMetricFilter",
        "logs:DeleteDestination",
        "logs:DeleteQueryDefinition",
        "logs:PutQueryDefinition",
        "logs:GetLogDelivery",
        "logs:ListLogDeliveries",
        "logs:CreateLogDelivery",
        "logs:DeleteResourcePolicy",
        "logs:PutResourcePolicy",
        "logs:DescribeExportTasks",
        "logs:GetQueryResults",
        "logs:UpdateLogDelivery",
        "logs:CancelExportTask",
        "logs:DeleteLogDelivery",
        "logs:DescribeQueryDefinitions",
        "logs:PutDestination",
        "logs:DescribeResourcePolicies",
        "logs:DescribeDestinations",
        "secretsmanager:ListSecrets"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    },
    {
      "Action": "logs:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:*:825437374987:destination:*",
        "arn:aws:logs:*:825437374987:log-group:*:log-stream:*"
      ],
      "Sid": "VisualEditor2"
    },
    {
      "Action": "logs:*",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:*:825437374987:log-group:*",
      "Sid": "VisualEditor3"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    service = "poi-generator"
  }

  tags_all = {
    service = "poi-generator"
  }
}

resource "aws_iam_policy" "PlannerEKSNodePolicy" {
  name = "PlannerEKSNodePolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "glue:BatchCreatePartition",
        "glue:DeleteDatabase",
        "cloudwatch:DeleteAlarms",
        "glue:GetPartitions",
        "lakeformation:GetDataAccess",
        "glue:BatchDeletePartition",
        "glue:UpdateTable",
        "glue:DeleteTable",
        "sns:ListTopics",
        "s3:ListBucket",
        "athena:*",
        "glue:CreatePartition",
        "glue:UpdatePartition",
        "glue:UpdateDatabase",
        "glue:CreateTable",
        "glue:GetTables",
        "sns:GetTopicAttributes",
        "lambda:InvokeFunction",
        "glue:BatchGetPartition",
        "glue:GetDatabases",
        "glue:GetTable",
        "glue:GetDatabase",
        "cloudwatch:PutMetricAlarm",
        "glue:GetPartition",
        "s3:ListAllMyBuckets",
        "glue:CreateDatabase",
        "cloudwatch:DescribeAlarms",
        "glue:BatchDeleteTable",
        "glue:DeletePartition",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:ListBucketMultipartUploads",
        "s3:PutBucketPublicAccessBlock",
        "s3:AbortMultipartUpload",
        "s3:GetObjectAttributes",
        "s3:CreateBucket",
        "s3:ListBucket",
        "s3:GetBucketLocation",
        "s3:ListMultipartUploadParts"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::amex-athena-query-logs*",
        "arn:aws:s3:::mobility-data-static*"
      ],
      "Sid": "VisualEditor1"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::amex-poi-data-parquet*",
        "arn:aws:s3:::amex-poi-data*",
        "arn:aws:s3:::poi-service-data*"
      ],
      "Sid": "VisualEditor2"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "S3-For-PlanningLog" {
  name = "S3-For-PlanningLog"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::planning-problems-dev",
        "arn:aws:s3:::planning-problems-dev/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "S3OnlyWriteObject" {
  name = "S3OnlyWriteObject"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetBucketPolicyStatus",
        "s3:PutObject",
        "s3:GetObject",
        "s3:ListBucketMultipartUploads",
        "s3:AbortMultipartUpload",
        "s3:ListBucketVersions",
        "s3:ListBucket",
        "s3:GetBucketAcl",
        "s3:GetObjectVersionAttributes",
        "s3:GetBucketPolicy",
        "s3:GetObjectVersion",
        "s3:ListMultipartUploadParts"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::scaleserp-when-to-visit/*",
        "arn:aws:s3:::scaleserp-when-to-visit"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:ListStorageLensConfigurations",
        "s3:ListAccessPointsForObjectLambda",
        "s3:ListAllMyBuckets",
        "s3:ListAccessPoints",
        "s3:ListJobs",
        "s3:ListMultiRegionAccessPoints"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    service = "poi-generation-service"
  }

  tags_all = {
    service = "poi-generation-service"
  }
}

resource "aws_iam_policy" "S3TransitDataAccess" {
  name = "S3TransitDataAccess"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::mobility-data-static"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:PutObjectAcl",
        "s3:GetObject",
        "s3:GetObjectAcl",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::mobility-data-static/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "SNS_publish" {
  description = "SNS publish permission"
  name        = "SNS_publish"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "kinesis:ListStreams",
        "kinesis:EnableEnhancedMonitoring",
        "kinesis:ListShards",
        "kinesis:UpdateShardCount",
        "kinesis:DescribeLimits",
        "kinesis:ListStreamConsumers",
        "kinesis:DisableEnhancedMonitoring"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "sns:Publish",
        "kinesis:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sns:*:825437374987:*",
        "arn:aws:kinesis:*:825437374987:*/*/consumer/*:*",
        "arn:aws:kinesis:eu-central-1:825437374987:stream/*",
        "arn:aws:kms:*:825437374987:key/*"
      ],
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "SegmentIOAccessS3" {
  name = "SegmentIOAccessS3"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::mobi-user-activities/segment-logs/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "SixFlagsDataStream" {
  description = "For Six Flags to stream data to us"
  name        = "SixFlagsDataStream"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::mobi-six-flags-data-stream/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "StatesExecutionPolicy-us-east-1" {
  description = "IAM policy for use with Amazon States"
  name        = "StatesExecutionPolicy-us-east-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "TUISecretsManagerPolicy" {
  name = "TUISecretsManagerPolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:825437374987:secret:tui-cps-secrets"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "access_poi_classification_model" {
  description = "Allows read access to the POI classification model S3 object"
  name        = "access_poi_classification_model"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::poi-classification-model/model.zip",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    service = "poi-generation-service"
  }

  tags_all = {
    service = "poi-generation-service"
  }
}

resource "aws_iam_policy" "alb-ingress-controller-policy" {
  description = "ALBIngressControllerIAMPolicy"
  name        = "alb-ingress-controller-policy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "acm:DescribeCertificate",
        "acm:ListCertificates",
        "acm:GetCertificate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:AuthorizeSecurityGroupIngress",
        "ec2:CreateSecurityGroup",
        "ec2:CreateTags",
        "ec2:DeleteTags",
        "ec2:DeleteSecurityGroup",
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAddresses",
        "ec2:DescribeInstances",
        "ec2:DescribeInstanceStatus",
        "ec2:DescribeInternetGateways",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeTags",
        "ec2:DescribeVpcs",
        "ec2:ModifyInstanceAttribute",
        "ec2:ModifyNetworkInterfaceAttribute",
        "ec2:RevokeSecurityGroupIngress"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticloadbalancing:AddListenerCertificates",
        "elasticloadbalancing:AddTags",
        "elasticloadbalancing:CreateListener",
        "elasticloadbalancing:CreateLoadBalancer",
        "elasticloadbalancing:CreateRule",
        "elasticloadbalancing:CreateTargetGroup",
        "elasticloadbalancing:DeleteListener",
        "elasticloadbalancing:DeleteLoadBalancer",
        "elasticloadbalancing:DeleteRule",
        "elasticloadbalancing:DeleteTargetGroup",
        "elasticloadbalancing:DeregisterTargets",
        "elasticloadbalancing:DescribeListenerCertificates",
        "elasticloadbalancing:DescribeListeners",
        "elasticloadbalancing:DescribeLoadBalancers",
        "elasticloadbalancing:DescribeLoadBalancerAttributes",
        "elasticloadbalancing:DescribeRules",
        "elasticloadbalancing:DescribeSSLPolicies",
        "elasticloadbalancing:DescribeTags",
        "elasticloadbalancing:DescribeTargetGroups",
        "elasticloadbalancing:DescribeTargetGroupAttributes",
        "elasticloadbalancing:DescribeTargetHealth",
        "elasticloadbalancing:ModifyListener",
        "elasticloadbalancing:ModifyLoadBalancerAttributes",
        "elasticloadbalancing:ModifyRule",
        "elasticloadbalancing:ModifyTargetGroup",
        "elasticloadbalancing:ModifyTargetGroupAttributes",
        "elasticloadbalancing:RegisterTargets",
        "elasticloadbalancing:RemoveListenerCertificates",
        "elasticloadbalancing:RemoveTags",
        "elasticloadbalancing:SetIpAddressType",
        "elasticloadbalancing:SetSecurityGroups",
        "elasticloadbalancing:SetSubnets",
        "elasticloadbalancing:SetWebACL"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:CreateServiceLinkedRole",
        "iam:GetServerCertificate",
        "iam:ListServerCertificates"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cognito-idp:DescribeUserPoolClient"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "waf-regional:GetWebACLForResource",
        "waf-regional:GetWebACL",
        "waf-regional:AssociateWebACL",
        "waf-regional:DisassociateWebACL"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "tag:GetResources",
        "tag:TagResources"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "waf:GetWebACL"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "wafv2:GetWebACL",
        "wafv2:GetWebACLForResource",
        "wafv2:AssociateWebACL",
        "wafv2:DisassociateWebACL"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "shield:DescribeProtection",
        "shield:GetSubscriptionState",
        "shield:DeleteProtection",
        "shield:CreateProtection",
        "shield:DescribeSubscription",
        "shield:ListProtections"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "sts:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "aws-transfer-home-directory-only-policy" {
  name = "aws-transfer-home-directory-only-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::mobi-shared-data"
      ],
      "Sid": "AllowListingOfUserFolder"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:DeleteObjectVersion",
        "s3:DeleteObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::mobi-shared-data/*",
      "Sid": "HomeDirObjectAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "gabriel" {
  name = "gabriel"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "eks:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "codedeploy:*",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "sns:ListTopics"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "SNSTopicListAccess"
    },
    {
      "Action": [
        "codestar-notifications:CreateNotificationRule",
        "codestar-notifications:DescribeNotificationRule",
        "codestar-notifications:UpdateNotificationRule",
        "codestar-notifications:DeleteNotificationRule",
        "codestar-notifications:Subscribe",
        "codestar-notifications:Unsubscribe"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CodeStarNotificationsReadWriteAccess"
    },
    {
      "Action": [
        "codestar-notifications:ListNotificationRules",
        "codestar-notifications:ListTargets",
        "codestar-notifications:ListTagsforResource",
        "codestar-notifications:ListEventTypes"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CodeStarNotificationsListAccess"
    },
    {
      "Action": [
        "sns:CreateTopic",
        "sns:SetTopicAttributes"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sns:*:*:codestar-notifications*",
      "Sid": "CodeStarNotificationsSNSTopicCreateAccess"
    },
    {
      "Action": [
        "chatbot:DescribeSlackChannelConfigurations"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CodeStarNotificationsChatbotAccess"
    },
    {
      "Action": [
        "codebuild:StartBuild",
        "codebuild:StopBuild",
        "codebuild:BatchGet*",
        "codebuild:GetResourcePolicy",
        "codebuild:DescribeTestCases",
        "codebuild:List*",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:ListBranches",
        "cloudwatch:GetMetricStatistics",
        "events:DescribeRule",
        "events:ListTargetsByRule",
        "events:ListRuleNamesByTarget",
        "logs:GetLogEvents",
        "s3:GetBucketLocation",
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ssm:PutParameter"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:*:*:parameter/CodeBuild/*"
    },
    {
      "Action": [
        "cloudformation:Describe*",
        "cloudformation:EstimateTemplateCost",
        "cloudformation:Get*",
        "cloudformation:List*",
        "cloudformation:ValidateTemplate",
        "cloudformation:Detect*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "lucidchartAWSimport" {
  name = "lucidchartAWSimport"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "autoscaling:DescribeAutoScalingGroups",
        "autoscaling:DescribeLaunchConfigurations",
        "cloudfront:ListDistributions",
        "ec2:DescribeInstances",
        "ec2:DescribeNetworkAcls",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeVolumes",
        "ec2:DescribeVpcs",
        "elasticloadbalancing:DescribeLoadBalancers",
        "elasticloadbalancing:DescribeTargetGroups",
        "elasticloadbalancing:DescribeTargetHealth",
        "iam:GetGroupPolicy",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRolePolicy",
        "iam:GetUserPolicy",
        "iam:ListAttachedGroupPolicies",
        "iam:ListAttachedRolePolicies",
        "iam:ListAttachedUserPolicies",
        "iam:ListGroupPolicies",
        "iam:ListGroups",
        "iam:ListGroupsForUser",
        "iam:ListRolePolicies",
        "iam:ListRoles",
        "iam:ListUserPolicies",
        "iam:ListUsers",
        "rds:DescribeDBInstances",
        "s3:ListAllMyBuckets",
        "SNS:GetTopicAttributes",
        "SNS:ListTopics",
        "sqs:GetQueueAttributes",
        "sqs:ListQueues"
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
}

resource "aws_iam_policy" "start-pipeline-execution-us-east-1-mobi-global-ui-staging" {
  description = "Allows Amazon CloudWatch Events to automatically start a new execution in the mobi-global-ui-staging pipeline when a change occurs"
  name        = "start-pipeline-execution-us-east-1-mobi-global-ui-staging"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codepipeline:us-east-1:825437374987:mobi-global-ui-staging"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "sts-assume-role" {
  name = "sts-assume-role"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::825437374987:role/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
