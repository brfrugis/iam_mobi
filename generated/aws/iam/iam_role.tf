resource "aws_iam_role" "16bwcc-a7g55jj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "16bwcc-a7g55jj-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::16bwcc-uk5s8c/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "16bwcc-a7g55jj"
  path                 = "/"
}

resource "aws_iam_role" "16bwcc-b3e0lx" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "16bwcc-b3e0lx-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::16bwcc-uk5s8c/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "16bwcc-b3e0lx"
  path                 = "/"
}

resource "aws_iam_role" "16bwcc-w0ra6r" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "16bwcc-w0ra6r-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::16bwcc-uk5s8c/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "16bwcc-w0ra6r"
  path                 = "/"
}

resource "aws_iam_role" "6sy55r8-a9pbajn" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "edgelambda.amazonaws.com",
          "lambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "6sy55r8-a9pbajn-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::6sy55r8-xi7rgpo/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "6sy55r8-a9pbajn"
  path                 = "/"
}

resource "aws_iam_role" "6sy55r8-db1ywul" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "6sy55r8-db1ywul-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::6sy55r8-xi7rgpo/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "6sy55r8-db1ywul"
  path                 = "/"
}

resource "aws_iam_role" "AWS-CodePipeline-Service" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "oneClick_AWS-CodePipeline-Service_1522865830712"
    policy = "{\n  \"Statement\": [\n    {\n      \"Action\": [\n        \"s3:GetObject\",\n        \"s3:GetObjectVersion\",\n        \"s3:GetBucketVersioning\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"s3:PutObject\"\n      ],\n      \"Resource\": [\n        \"arn:aws:s3:::codepipeline*\",\n        \"arn:aws:s3:::elasticbeanstalk*\"\n      ],\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"codecommit:CancelUploadArchive\",\n        \"codecommit:GetBranch\",\n        \"codecommit:GetCommit\",\n        \"codecommit:GetUploadArchiveStatus\",\n        \"codecommit:UploadArchive\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"codedeploy:CreateDeployment\",\n        \"codedeploy:GetApplicationRevision\",\n        \"codedeploy:GetDeployment\",\n        \"codedeploy:GetDeploymentConfig\",\n        \"codedeploy:RegisterApplicationRevision\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"elasticbeanstalk:*\",\n        \"ec2:*\",\n        \"elasticloadbalancing:*\",\n        \"autoscaling:*\",\n        \"cloudwatch:*\",\n        \"s3:*\",\n        \"sns:*\",\n        \"cloudformation:*\",\n        \"rds:*\",\n        \"sqs:*\",\n        \"ecs:*\",\n        \"iam:PassRole\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"lambda:InvokeFunction\",\n        \"lambda:ListFunctions\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"opsworks:CreateDeployment\",\n        \"opsworks:DescribeApps\",\n        \"opsworks:DescribeCommands\",\n        \"opsworks:DescribeDeployments\",\n        \"opsworks:DescribeInstances\",\n        \"opsworks:DescribeStacks\",\n        \"opsworks:UpdateApp\",\n        \"opsworks:UpdateStack\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"cloudformation:CreateStack\",\n        \"cloudformation:DeleteStack\",\n        \"cloudformation:DescribeStacks\",\n        \"cloudformation:UpdateStack\",\n        \"cloudformation:CreateChangeSet\",\n        \"cloudformation:DeleteChangeSet\",\n        \"cloudformation:DescribeChangeSet\",\n        \"cloudformation:ExecuteChangeSet\",\n        \"cloudformation:SetStackPolicy\",\n        \"cloudformation:ValidateTemplate\",\n        \"iam:PassRole\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    },\n    {\n      \"Action\": [\n        \"codebuild:BatchGetBuilds\",\n        \"codebuild:StartBuild\"\n      ],\n      \"Resource\": \"*\",\n      \"Effect\": \"Allow\"\n    }\n  ],\n  \"Version\": \"2012-10-17\"\n}"
  }

  max_session_duration = "3600"
  name                 = "AWS-CodePipeline-Service"
  path                 = "/"
}

resource "aws_iam_role" "AWS-QuickSetup-StackSet-Local-AdministrationRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AssumeRole-AWS-QuickSetup-StackSet-Local-ExecutionRole"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"sts:AssumeRole\"],\"Resource\":[\"arn:*:iam::*:role/AWS-QuickSetup-StackSet-Local-ExecutionRole\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-StackSet-Local-AdministrationRole"
  path                 = "/"
}

resource "aws_iam_role" "AWS-QuickSetup-StackSet-Local-ExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:role/AWS-QuickSetup-StackSet-Local-AdministrationRole"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-StackSet-Local-ExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "AWSArtifactAccountSync" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "aws-artifact-account-sync.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS Artifact role used to support integration with AWS Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSArtifactAccountSync"]
  max_session_duration = "3600"
  name                 = "AWSArtifactAccountSync"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AWSCodePipelineServiceRole-us-east-1-stadium-simulation" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSCodePipelineServiceRole-us-east-1-stadium-simulation"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-us-east-1-stadium-simulation"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AWSCodeStarNotifications-Chatbot-Slack-Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "chatbot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS Chatbot Execution Role"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWS-Chatbot-NotificationsOnly-Policy-8f174c81-4a71-40d9-bcbb-3c3172992d77"]
  max_session_duration = "3600"
  name                 = "AWSCodeStarNotifications-Chatbot-Slack-Role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AWSControlTowerExecution" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {},
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::537272725562:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf.Allows full account access for enrollment"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "AWSControlTowerExecution"
  path                 = "/"
}

resource "aws_iam_role" "AWSDataPipelineEC2InstanceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides access to S3, DynamoDB, and other services for EC2 instances that Data Pipeline launches."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforDataPipelineRole"]
  max_session_duration = "3600"
  name                 = "AWSDataPipelineEC2InstanceRole"
  path                 = "/"
}

resource "aws_iam_role" "AWSDataPipelineRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "elasticmapreduce.amazonaws.com",
          "datapipeline.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Data Pipeline and Data Pipeline managed EMR clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSDataPipelineRole"]
  max_session_duration = "3600"
  name                 = "AWSDataPipelineRole"
  path                 = "/"
}

resource "aws_iam_role" "AWSFISServiceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {},
      "Effect": "Allow",
      "Principal": {
        "Service": "fis.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = " IAM role that grants the AWS FIS service permission to perform actions on your behalf"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/AWSFISServiceRole"]
  max_session_duration = "3600"
  name                 = "AWSFISServiceRole"
  path                 = "/"
}

resource "aws_iam_role" "AWSGlueServiceRole-AmexPoiDataCrawler" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSGlueServiceRole-AmexPoiDataCrawler", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"]
  max_session_duration = "3600"
  name                 = "AWSGlueServiceRole-AmexPoiDataCrawler"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AWSGlueServiceRole-AmexPoiDataCrawlerParquet" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSGlueServiceRole-AmexPoiDataCrawlerParquet", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"]
  max_session_duration = "3600"
  name                 = "AWSGlueServiceRole-AmexPoiDataCrawlerParquet"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AWSGlueServiceRole-destinationCrawler" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSGlueServiceRole-destinationCrawler", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"]
  max_session_duration = "3600"
  name                 = "AWSGlueServiceRole-destinationCrawler"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AWSReservedSSO_AWSAdministratorAccess_8a2ad0e2c79db090" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides full access to AWS services and resources"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AWSAdministratorAccess_8a2ad0e2c79db090"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_AWSOrganizationsFullAccess_83e8bbb79af18679" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides full access to AWS Organizations"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSOrganizationsFullAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AWSOrganizationsFullAccess_83e8bbb79af18679"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_AWSPowerUserAccess_ee1cd8af3aa648a5" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides full access to AWS services and resources, but does not allow management of Users and groups"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/PowerUserAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AWSPowerUserAccess_ee1cd8af3aa648a5"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_AWSReadOnlyAccess_dfd8b2365e441a03" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy grants permissions to view resources and basic metadata across all AWS services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AWSReadOnlyAccess_dfd8b2365e441a03"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_AWSServiceCatalogAdminFullAccess_4762e3cd7eca4e76" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides full access to AWS Service Catalog admin capabilities"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSServiceCatalogAdminFullAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AWSServiceCatalogAdminFullAccess_4762e3cd7eca4e76"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_AdministratorAccess_ac909d5543214d9b" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AdministratorAccess_ac909d5543214d9b"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_DataScientist_cbb72e52c0a42bb0" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/job-function/DataScientist"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_DataScientist_cbb72e52c0a42bb0"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_DatabaseAdministrator_90f29d686eca966e" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/job-function/DatabaseAdministrator"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_DatabaseAdministrator_90f29d686eca966e"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_NetworkAdministrator_f78fab1e71d7017e" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/job-function/NetworkAdministrator"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_NetworkAdministrator_f78fab1e71d7017e"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_PowerUserAccess_726af164bc935121" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/PowerUserAccess", "arn:aws:iam::aws:policy/service-role/AWSControlTowerServiceRolePolicy"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_PowerUserAccess_726af164bc935121"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSReservedSSO_SystemAdministrator_427b0e019e8548f1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:saml-provider/AWSSSO_facfd2a3c2ba5262_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/job-function/SystemAdministrator"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_SystemAdministrator_427b0e019e8548f1"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAPIGateway" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role is used by Amazon API Gateway."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAWSChatbot" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "management.chatbot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role used by AWS Chatbot."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSChatbotServiceLinkedRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAWSChatbot"
  path                 = "/aws-service-role/management.chatbot.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAmazonEKS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon EKS to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKS"
  path                 = "/aws-service-role/eks.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAmazonEKSNodegroup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-nodegroup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows Amazon EKS to create and manage Nodegroups"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKSNodegroup"
  path                 = "/aws-service-role/eks-nodegroup.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAmazonElasticFileSystem" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticfilesystem.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonElasticFileSystemServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonElasticFileSystem"
  path                 = "/aws-service-role/elasticfilesystem.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAmazonGuardDuty" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "guardduty.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "A service-linked role required for Amazon GuardDuty to access your resources. "
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonGuardDuty"
  path                 = "/aws-service-role/guardduty.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAmazonMQ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "mq.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon MQ to call AWS services on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonMQServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonMQ"
  path                 = "/aws-service-role/mq.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAmazonSSM" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides access to AWS Resources managed or used by Amazon SSM."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSSM"
  path                 = "/aws-service-role/ssm.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAmazonSageMakerNotebooks" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS SageMaker Notebooks Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSageMakerNotebooks"
  path                 = "/aws-service-role/sagemaker.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForApplicationAutoScaling_ECSService" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForApplicationAutoScaling_ECSService"
  path                 = "/aws-service-role/ecs.application-autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForAutoScaling" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAutoScaling"
  path                 = "/aws-service-role/autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForBackup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "backup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForBackup"
  path                 = "/aws-service-role/backup.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForClientVPN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "clientvpn.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service Linked Role for Client VPN"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForClientVPN"
  path                 = "/aws-service-role/clientvpn.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForClientVPNConnections" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "clientvpn-connections.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service Linked Role for Client VPN connections"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceConnectionsRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForClientVPNConnections"
  path                 = "/aws-service-role/clientvpn-connections.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForCloudFormationStackSetsOrgMember" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "member.org.stacksets.cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service linked role for CloudFormation StackSets (Organization Member)"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudFormationStackSetsOrgMemberServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudFormationStackSetsOrgMember"
  path                 = "/aws-service-role/member.org.stacksets.cloudformation.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForCloudFrontLogger" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "logger.cloudfront.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSCloudFrontLogger"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudFrontLogger"
  path                 = "/aws-service-role/logger.cloudfront.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForCodeStarNotifications" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codestar-notifications.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS CodeStar Notifications to access Amazon CloudWatch Events on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSCodeStarNotificationsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCodeStarNotifications"
  path                 = "/aws-service-role/codestar-notifications.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForComputeOptimizer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "compute-optimizer.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ComputeOptimizer to call AWS services and collect workload details on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForComputeOptimizer"
  path                 = "/aws-service-role/compute-optimizer.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForConfig" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForConfig"
  path                 = "/aws-service-role/config.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForDynamoDBKinesisDataStreamsReplication" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "kinesisreplication.dynamodb.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/DynamoDBKinesisReplicationServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForDynamoDBKinesisDataStreamsReplication"
  path                 = "/aws-service-role/kinesisreplication.dynamodb.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForECRReplication" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "replication.ecr.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ECRReplicationServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECRReplication"
  path                 = "/aws-service-role/replication.ecr.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role to enable Amazon ECS to manage your cluster."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForElastiCache" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticache.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows ElastiCache to manage AWS resources on your behalf as necessary for managing your cache."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElastiCache"
  path                 = "/aws-service-role/elasticache.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForElasticLoadBalancing" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ELB to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForFIS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "fis.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role to enable AWS FIS to manage monitoring and resource selection for experiments."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonFISServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForFIS"
  path                 = "/aws-service-role/fis.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForGlobalAccelerator" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "globalaccelerator.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Global Accelerator to call AWS services on customer's behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForGlobalAccelerator"
  path                 = "/aws-service-role/globalaccelerator.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForLambdaReplicator" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "replicator.lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSLambdaReplicator"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForLambdaReplicator"
  path                 = "/aws-service-role/replicator.lambda.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForLexBots" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lex.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonLexBotPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForLexBots"
  path                 = "/aws-service-role/lex.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForRDS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon RDS to manage AWS resources on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForRedshift" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon Redshift to call AWS services on your behalf "
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRedshiftServiceLinkedRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRedshift"
  path                 = "/aws-service-role/redshift.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForSSO" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sso.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForServiceQuotas" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "servicequotas.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "A service-linked role is required for Service Quotas to access your service limits."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ServiceQuotasServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForServiceQuotas"
  path                 = "/aws-service-role/servicequotas.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "AWSTransferLoggingAccess" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "transfer.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess"]
  max_session_duration = "3600"
  name                 = "AWSTransferLoggingAccess"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AWSTransferRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "transfer.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allow AWS Transfer to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/aws-transfer-home-directory-only-policy"]
  max_session_duration = "3600"
  name                 = "AWSTransferRole"
  path                 = "/"
}

resource "aws_iam_role" "AmazonPersonalize-ExecutionRole-1617905147659" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "personalize.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Personalize execution role created from the Personalize AWS Management Console."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AmazonPersonalize-ExecutionPolicy-1617905147659", "arn:aws:iam::aws:policy/service-role/AmazonPersonalizeFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonPersonalize-ExecutionRole-1617905147659"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AmazonRedshift-CommandsAccessRole-20220127T093536" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "sagemaker.amazonaws.com",
          "redshift.amazonaws.com",
          "redshift-serverless.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AmazonRedshift-CommandsAccessPolicy-20220127T093536", "arn:aws:iam::aws:policy/AmazonRedshiftAllCommandsFullAccess", "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "AmazonRedshift-CommandsAccessRole-20220127T093536"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AmazonSSMExplorerExportRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service role for lambda to execute csv export of a getOpsSummary results set"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AmazonSSMExplorerExportRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSSMExplorerExportRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AmazonSageMaker-ExecutionRole-20210628T231528" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker execution role created from the SageMaker AWS Management Console."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AmazonSageMaker-ExecutionPolicy-20210628T231528", "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMaker-ExecutionRole-20210628T231528"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AmazonSageMaker-ExecutionRole-20220427T111683" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker execution role created from the SageMaker AWS Management Console."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AmazonSageMaker-ExecutionPolicy-20220427T111683", "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMaker-ExecutionRole-20220427T111683"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AmazonSageMakerServiceCatalogProductsLaunchRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "servicecatalog.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role has the permissions required to launch the Amazon SageMaker portfolio of products from AWS ServiceCatalog."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsLaunchRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AmazonSageMakerServiceCatalogProductsUseRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "firehose.amazonaws.com",
          "glue.amazonaws.com",
          "codebuild.amazonaws.com",
          "codepipeline.amazonaws.com",
          "states.amazonaws.com",
          "events.amazonaws.com",
          "lambda.amazonaws.com",
          "cloudformation.amazonaws.com",
          "apigateway.amazonaws.com",
          "sagemaker.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role has the permissions required to use the Amazon SageMaker portfolio of products from AWS ServiceCatalog."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AmazonSageMakerServiceCatalogProductsUseRole-20210628T231683"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsUseRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "AmexPoiGlueRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Glue to call AWS services on your behalf. "
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"]
  max_session_duration = "3600"
  name                 = "AmexPoiGlueRole"
  path                 = "/"
}

resource "aws_iam_role" "ApiGatewayRoleKinesisRW" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "apigateway.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows API Gateway to read from/write to Kinesis"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonKinesisFirehoseFullAccess", "arn:aws:iam::aws:policy/AmazonKinesisFullAccess"]
  max_session_duration = "3600"
  name                 = "ApiGatewayRoleKinesisRW"
  path                 = "/"
}

resource "aws_iam_role" "ApplicationAutoScalingForAmazonAppStreamAccess" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/ApplicationAutoScalingForAmazonAppStreamAccess"]
  max_session_duration = "3600"
  name                 = "ApplicationAutoScalingForAmazonAppStreamAccess"
  path                 = "/service-role/"
}

resource "aws_iam_role" "CloudwatchFullAccess" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/CloudWatchFullAccess"]
  max_session_duration = "3600"
  name                 = "CloudwatchFullAccess"
  path                 = "/"
}

resource "aws_iam_role" "CodeBuildServiceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows CodeBuild to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/CodeBuildServiceRolePolicy", "arn:aws:iam::825437374987:policy/CodeBuildTrustPolicy", "arn:aws:iam::825437374987:policy/service-role/CodeBuildBasePolicy-BuildRiderscoreDashboard-us-east-1", "arn:aws:iam::825437374987:policy/service-role/CodeBuildSecretsManagerPolicy-BuildRiderscoreDashboard-us-east-1", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"]
  max_session_duration = "3600"
  name                 = "CodeBuildServiceRole"
  path                 = "/"
}

resource "aws_iam_role" "CodeDeploy-EC2-Instance-Profile" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/CloudWatchCreateLogStream", "arn:aws:iam::825437374987:policy/CodeDeploy-EC2-Permissions", "arn:aws:iam::825437374987:policy/S3-For-PlanningLog", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"]
  max_session_duration = "3600"
  name                 = "CodeDeploy-EC2-Instance-Profile"
  path                 = "/"
}

resource "aws_iam_role" "CodeDeployServiceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codedeploy.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"]
  max_session_duration = "3600"
  name                 = "CodeDeployServiceRole"
  path                 = "/"
}

resource "aws_iam_role" "Cognito_MobiUsersAuth_Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "ForAnyValue:StringLike": {
          "cognito-identity.amazonaws.com:amr": "authenticated"
        },
        "StringEquals": {
          "cognito-identity.amazonaws.com:aud": "us-east-1:8c0eab4d-c580-4d34-bae7-c9cc597e8a5a"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "cognito-identity.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "oneClick_Cognito_MobiUsersAuth_Role_1483063394644"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"mobileanalytics:PutEvents\",\n        \"cognito-sync:*\",\n        \"cognito-identity:*\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}"
  }

  max_session_duration = "3600"
  name                 = "Cognito_MobiUsersAuth_Role"
  path                 = "/"
}

resource "aws_iam_role" "Cognito_MobiUsersUnauth_Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "ForAnyValue:StringLike": {
          "cognito-identity.amazonaws.com:amr": "unauthenticated"
        },
        "StringEquals": {
          "cognito-identity.amazonaws.com:aud": "us-east-1:8c0eab4d-c580-4d34-bae7-c9cc597e8a5a"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "cognito-identity.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "oneClick_Cognito_MobiUsersUnauth_Role_1483063394645"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"mobileanalytics:PutEvents\",\n        \"cognito-sync:*\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}"
  }

  max_session_duration = "3600"
  name                 = "Cognito_MobiUsersUnauth_Role"
  path                 = "/"
}

resource "aws_iam_role" "DatadogAWSIntegrationRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "3ccf61782692470498c26ad88138b355"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::464622532012:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Datadog integration for AWS FARGATE"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/DatadogAWSIntegrationPolicy"]
  max_session_duration = "3600"
  name                 = "DatadogAWSIntegrationRole"
  path                 = "/"
}

resource "aws_iam_role" "Datadog_AWS_Web_Services_Integration" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "8ea8166dbd3f41d39d0cadeeb17f5dc9"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::464622532012:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Datadog AWS Web Services Integration - NOT Fargate"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/Datadog_AWS_Web_Services_Integration_Policy"]
  max_session_duration = "3600"
  name                 = "Datadog_AWS_Web_Services_Integration"
  path                 = "/"
}

resource "aws_iam_role" "EC2_DisneyPOC" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services based on the Disney POC requirements."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/DisneyPOC"]
  max_session_duration = "3600"
  name                 = "EC2_DisneyPOC"
  path                 = "/"
}

resource "aws_iam_role" "EKSNodeInstanceDevRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EKS to manage nodegroups on your behalf."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications", "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI", "arn:aws:iam::825437374987:policy/SNS_publish", "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy", "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "EKSNodeInstanceDevRole"
  path                 = "/"
}

resource "aws_iam_role" "EKSNodeInstanceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:root"
      }
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.us-east-1.amazonaws.com/id/9B8296C2B32962313D3383AC3906D490:aud": "sts.amazonaws.com",
          "oidc.eks.us-east-1.amazonaws.com/id/9B8296C2B32962313D3383AC3906D490:sub": "system:serviceaccount:mobi:staging-mobi-planner"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/9B8296C2B32962313D3383AC3906D490"
      }
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.us-east-1.amazonaws.com/id/FB9A8D1B25DCAFA41F6FC397A76F130A:aud": "sts.amazonaws.com",
          "oidc.eks.us-east-1.amazonaws.com/id/FB9A8D1B25DCAFA41F6FC397A76F130A:sub": "system:serviceaccount:mobi:mobi-planner"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/FB9A8D1B25DCAFA41F6FC397A76F130A"
      }
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.us-east-1.amazonaws.com/id/967BA8DC410E1A5E198B7C3579AED495:aud": "sts.amazonaws.com",
          "oidc.eks.us-east-1.amazonaws.com/id/967BA8DC410E1A5E198B7C3579AED495:sub": "system:serviceaccount:mobi:mobi-planner"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/967BA8DC410E1A5E198B7C3579AED495"
      }
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.us-east-2.amazonaws.com/id/94878CE0C179877B9E81C56729E5040B:aud": "sts.amazonaws.com",
          "oidc.eks.us-east-2.amazonaws.com/id/94878CE0C179877B9E81C56729E5040B:sub": "system:serviceaccount:mobi:mobi-planner"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/94878CE0C179877B9E81C56729E5040B"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Amazon EKS - Node Group Role"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI", "arn:aws:iam::825437374987:policy/PlannerEKSNodePolicy", "arn:aws:iam::825437374987:policy/SNS_publish", "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy", "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "EKSNodeInstanceRole"
  path                 = "/"
}

resource "aws_iam_role" "EKSNodeInstanceStagingRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows access to other AWS service resources that are required to operate clusters managed by EKS."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications", "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI", "arn:aws:iam::825437374987:policy/SNS_publish", "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy", "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "EKSNodeInstanceStagingRole"
  path                 = "/"
}

resource "aws_iam_role" "EKSNodeInstanceUatRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allow EKS to manage nodegroups on your behalf."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications", "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI", "arn:aws:iam::825437374987:policy/SNS_publish", "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy", "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "EKSNodeInstanceUatRole"
  path                 = "/"
}

resource "aws_iam_role" "HelloWorldFunction-role-sqhbv8z9" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "HelloWorldFunction"
    policy = "{\r\n\"Version\": \"2012-10-17\",\r\n\"Statement\": [\r\n    {\r\n        \"Sid\": \"VisualEditor0\",\r\n        \"Effect\": \"Allow\",\r\n        \"Action\": [\r\n            \"dynamodb:PutItem\",\r\n            \"dynamodb:DeleteItem\",\r\n            \"dynamodb:GetItem\",\r\n            \"dynamodb:Scan\",\r\n            \"dynamodb:Query\",\r\n            \"dynamodb:UpdateItem\"\r\n        ],\r\n        \"Resource\": \"arn:aws:dynamodb:us-west-2:825437374987:table/HelloWorldDatabase\"\r\n    }\r\n    ]\r\n}"
  }

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-f9eded41-771f-4d29-8416-c117dca8a387"]
  max_session_duration = "3600"
  name                 = "HelloWorldFunction-role-sqhbv8z9"
  path                 = "/service-role/"
}

resource "aws_iam_role" "KinesisCrossAccountTUI" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {},
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Connect to Kinesis under the TUI AWS account"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"]
  max_session_duration = "3600"
  name                 = "KinesisCrossAccountTUI"
  path                 = "/"
}

resource "aws_iam_role" "KinesisCrossAccountTUI2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {},
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"]
  max_session_duration = "3600"
  name                 = "KinesisCrossAccountTUI2"
  path                 = "/"
}

resource "aws_iam_role" "KinesisCrossAccountTUIDriverLocation" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {},
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::402564797671:role/dx-test-role_digital-transport-to-mobi"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows TUI to access driver location stream under Mobi AWS account "
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/KinesisCrossAccountTUIDriverLocation"]
  max_session_duration = "3600"
  name                 = "KinesisCrossAccountTUIDriverLocation"
  path                 = "/"
}

resource "aws_iam_role" "KinesisFirehoseServiceRole-mobi-six-flag-us-east-1-1611177560958" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/KinesisFirehoseServicePolicy-mobi-six-flags-data-stream-us-east-1"]
  max_session_duration = "3600"
  name                 = "KinesisFirehoseServiceRole-mobi-six-flag-us-east-1-1611177560958"
  path                 = "/service-role/"
}

resource "aws_iam_role" "LucidchartAwsImport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "c4c552d4-a9c7-4eb5-a41d-f098e8e20baf"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::799803075172:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/lucidchartAWSimport"]
  max_session_duration = "3600"
  name                 = "LucidchartAwsImport"
  path                 = "/"
}

resource "aws_iam_role" "MonitoringTestAlertToOpsgenie-role-ecy6kecd" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-b11af1e5-9370-4c37-ace5-35139195644b"]
  max_session_duration = "3600"
  name                 = "MonitoringTestAlertToOpsgenie-role-ecy6kecd"
  path                 = "/service-role/"
}

resource "aws_iam_role" "OpsItem-CWE-Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service role to allow Amazon CloudWatchEvents to create OpsItems"
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/OpsItem-CWE-RolePolicy"]
  max_session_duration = "3600"
  name                 = "OpsItem-CWE-Role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "POIGenerationServiceSageMakerExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows SageMaker notebook instances, training jobs, and models to access S3, ECR, and CloudWatch on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "POIGenerationServiceSageMakerExecutionRole"
  path                 = "/"

  tags = {
    service = "poi-generation-service"
  }

  tags_all = {
    service = "poi-generation-service"
  }
}

resource "aws_iam_role" "POIGeneratorTaskServiceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ECS tasks to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/POIGenerationTaskServerEFSAccess", "arn:aws:iam::825437374987:policy/POIGenerator-S3SecretsCloudWatchLogsPolicy", "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "POIGeneratorTaskServiceRole"
  path                 = "/"

  tags = {
    service = "poi-generation-task-server"
  }

  tags_all = {
    service = "poi-generation-task-server"
  }
}

resource "aws_iam_role" "SNSFailureFeedback" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sns.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "oneClick_SNSFailureFeedback_1490812130458"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:CreateLogGroup\",\n        \"logs:CreateLogStream\",\n        \"logs:PutLogEvents\",\n        \"logs:PutMetricFilter\",\n        \"logs:PutRetentionPolicy\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}"
  }

  max_session_duration = "3600"
  name                 = "SNSFailureFeedback"
  path                 = "/"
}

resource "aws_iam_role" "SNSSuccessFeedback" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sns.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "oneClick_SNSSuccessFeedback_1490812130457"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:CreateLogGroup\",\n        \"logs:CreateLogStream\",\n        \"logs:PutLogEvents\",\n        \"logs:PutMetricFilter\",\n        \"logs:PutRetentionPolicy\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}"
  }

  inline_policy {
    name   = "oneClick_SNSSuccessFeedback_1507568464438"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:CreateLogGroup\",\n        \"logs:CreateLogStream\",\n        \"logs:PutLogEvents\",\n        \"logs:PutMetricFilter\",\n        \"logs:PutRetentionPolicy\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}"
  }

  max_session_duration = "3600"
  name                 = "SNSSuccessFeedback"
  path                 = "/"
}

resource "aws_iam_role" "StatesExecutionRole-us-east-1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "states.us-east-1.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/StatesExecutionPolicy-us-east-1"]
  max_session_duration = "3600"
  name                 = "StatesExecutionRole-us-east-1"
  path                 = "/service-role/"
}

resource "aws_iam_role" "TestRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-aa07d6b2-4670-4673-bd0f-98a1e0e851fd", "arn:aws:iam::825437374987:policy/service-role/AWSLambdaMicroserviceExecutionRole-0c0dae9b-d31d-4615-b6ae-feeb117f2d87"]
  max_session_duration = "3600"
  name                 = "TestRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "TransitDataAlertToOpsgenie-role-ahu327wv" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-1caa90f2-748d-4dcf-9237-185da14d89ad"]
  max_session_duration = "3600"
  name                 = "TransitDataAlertToOpsgenie-role-ahu327wv"
  path                 = "/service-role/"
}

resource "aws_iam_role" "amplify-login-lambda-c47df780" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "Amplify-backend"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Action\":[\"amplifybackend:GetToken\",\"amplifybackend:DeleteToken\"],\"Resource\":\"arn:aws:amplifybackend:*:*:/backend/*\"},{\"Effect\":\"Allow\",\"Action\":[\"amplify:GetApp\"],\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "amplify-login-lambda-c47df780"
  path                 = "/"
}

resource "aws_iam_role" "amplifyconsole-backend-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "amplify.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amplify Backend Deployment to access AWS resources on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess-Amplify"]
  max_session_duration = "3600"
  name                 = "amplifyconsole-backend-role"
  path                 = "/"

  tags = {
    Name = "Test role for amplify"
  }

  tags_all = {
    Name = "Test role for amplify"
  }
}

resource "aws_iam_role" "aws-controltower-AdministratorExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::452152601211:role/aws-controltower-AuditAdministratorRole"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "aws-controltower-AdministratorExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "aws-controltower-CloudWatchLogsRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Sid": "CloudTrailAssumeRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "cloudtrail-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"logs:CreateLogStream\",\"Resource\":\"arn:aws:logs:us-east-1:825437374987:log-group:aws-controltower/CloudTrailLogs:*\",\"Effect\":\"Allow\",\"Sid\":\"AWSCloudTrailCreateLogStream\"},{\"Action\":\"logs:PutLogEvents\",\"Resource\":\"arn:aws:logs:us-east-1:825437374987:log-group:aws-controltower/CloudTrailLogs:*\",\"Effect\":\"Allow\",\"Sid\":\"AWSCloudTrailPutLogEvents\"}]}"
  }

  max_session_duration = "3600"
  name                 = "aws-controltower-CloudWatchLogsRole"
  path                 = "/"
}

resource "aws_iam_role" "aws-controltower-ConfigRecorderRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess", "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"]
  max_session_duration = "3600"
  name                 = "aws-controltower-ConfigRecorderRole"
  path                 = "/"
}

resource "aws_iam_role" "aws-controltower-ForwardSnsNotificationRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sns"
    policy = "{\"Statement\":[{\"Action\":[\"sns:publish\"],\"Resource\":\"arn:aws:sns:*:452152601211:aws-controltower-AggregateSecurityNotifications\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "aws-controltower-ForwardSnsNotificationRole"
  path                 = "/"
}

resource "aws_iam_role" "aws-controltower-ReadOnlyExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::452152601211:role/aws-controltower-AuditReadOnlyRole"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "aws-controltower-ReadOnlyExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "aws-elasticbeanstalk-ec2-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker", "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier", "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier"]
  max_session_duration = "3600"
  name                 = "aws-elasticbeanstalk-ec2-role"
  path                 = "/"
}

resource "aws_iam_role" "aws-elasticbeanstalk-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "elasticbeanstalk"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticbeanstalk.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy", "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"]
  max_session_duration = "3600"
  name                 = "aws-elasticbeanstalk-service-role"
  path                 = "/"
}

resource "aws_iam_role" "aws_batch_service_role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "batch.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole"]
  max_session_duration = "3600"
  name                 = "aws_batch_service_role"
  path                 = "/"
}

resource "aws_iam_role" "bluesky-authenticator-role-dywn893c" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-11c7cf9b-51ee-484c-85b2-69a599bd7e52"]
  max_session_duration = "3600"
  name                 = "bluesky-authenticator-role-dywn893c"
  path                 = "/service-role/"
}

resource "aws_iam_role" "cloudcraft" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "7c575f14-3aab-4b0e-bab1-f9c460704a25"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::968898580625:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "cloudcraft"
  path                 = "/"
}

resource "aws_iam_role" "codebuild" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "terraform-20190607210958311500000001"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Resource\": [\n        \"*\"\n      ],\n      \"Action\": [\n        \"logs:CreateLogGroup\",\n        \"logs:CreateLogStream\",\n        \"logs:PutLogEvents\"\n      ]\n    },\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"ec2:CreateNetworkInterface\",\n        \"ec2:DescribeDhcpOptions\",\n        \"ec2:DescribeNetworkInterfaces\",\n        \"ec2:DeleteNetworkInterface\",\n        \"ec2:DescribeSubnets\",\n        \"ec2:DescribeSecurityGroups\",\n        \"ec2:DescribeVpcs\"\n      ],\n      \"Resource\": \"*\"\n    },\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"ecr:*\"\n      ],\n      \"Resource\": \"*\"\n    },\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"s3:*\"\n      ],\n      \"Resource\": \"*\"\n    }\n  ]\n}\n"
  }

  max_session_duration = "3600"
  name                 = "codebuild"
  path                 = "/"
}

resource "aws_iam_role" "codebuild-BuildStadiumSimilation-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/CodeBuildBasePolicy-BuildStadiumSimilation-us-east-1"]
  max_session_duration = "3600"
  name                 = "codebuild-BuildStadiumSimilation-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "codepipeline" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "codepipeline"
    policy = "{\n    \"Statement\": [\n        {\n            \"Action\": [\n                \"s3:*\",\n                \"ec2:*\",\n                \"iam:PassRole\",\n                \"codepipeline:*\",\n                \"ecs:*\",\n                \"ecr:*\",\n                \"lambda:*\",\n                \"codedeploy:*\",\n                \"codebuild:BatchGetBuilds\",\n                \"codebuild:StartBuild\"\n            ],\n            \"Resource\": \"*\",\n            \"Effect\": \"Allow\"\n        }\n    ],\n    \"Version\": \"2012-10-17\"\n}\n"
  }

  max_session_duration = "3600"
  name                 = "codepipeline"
  path                 = "/"
}

resource "aws_iam_role" "cwe-role-us-east-1-mobi-global-ui-staging" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/start-pipeline-execution-us-east-1-mobi-global-ui-staging"]
  max_session_duration = "3600"
  name                 = "cwe-role-us-east-1-mobi-global-ui-staging"
  path                 = "/service-role/"
}

resource "aws_iam_role" "ecsAutoscaleRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceAutoscaleRole"]
  max_session_duration = "3600"
  name                 = "ecsAutoscaleRole"
  path                 = "/"
}

resource "aws_iam_role" "ecsEventsRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceEventsRole"]
  max_session_duration = "3600"
  name                 = "ecsEventsRole"
  path                 = "/"
}

resource "aws_iam_role" "ecsInstanceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"]
  max_session_duration = "3600"
  name                 = "ecsInstanceRole"
  path                 = "/"
}

resource "aws_iam_role" "ecsTaskExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "ecsTaskExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "ecs_instance_role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"]
  max_session_duration = "3600"
  name                 = "ecs_instance_role"
  path                 = "/"
}

resource "aws_iam_role" "eks-alb-ingress-controller" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.us-east-1.amazonaws.com/id/29FF64C769DEA685DD31E3D9ABB2AFDD:sub": "system:serviceaccount:kube-system:alb-ingress-controller"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/29FF64C769DEA685DD31E3D9ABB2AFDD"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/alb-ingress-controller-policy"]
  max_session_duration = "3600"
  name                 = "eks-alb-ingress-controller"
  path                 = "/"
}

resource "aws_iam_role" "eks-node-group-mobi" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]
  max_session_duration = "3600"
  name                 = "eks-node-group-mobi"
  path                 = "/"
}

resource "aws_iam_role" "eksClusterRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.us-east-1.amazonaws.com/id/29FF64C769DEA685DD31E3D9ABB2AFDD:sub": "system:serviceaccount:kube-system:alb-ingress-controller"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/29FF64C769DEA685DD31E3D9ABB2AFDD"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows access to other AWS service resources that are required to operate clusters managed by EKS."
  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications", "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
  max_session_duration = "3600"
  name                 = "eksClusterRole"
  path                 = "/"
}

resource "aws_iam_role" "eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "eks.amazonaws.com",
          "eks-fargate-pods.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "eksctl-staging-cluster-cluster-PolicyCloudWatchMetrics"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "eksctl-staging-cluster-cluster-PolicyNLB"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"elasticloadbalancing:*\",\"ec2:CreateSecurityGroup\",\"ec2:Describe*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
  max_session_duration = "3600"
  name                 = "eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN"
  path                 = "/"

  tags = {
    "alpha.eksctl.io/cluster-name"                = "staging-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.19.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "staging-cluster"
  }

  tags_all = {
    "alpha.eksctl.io/cluster-name"                = "staging-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.19.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "staging-cluster"
  }
}

resource "aws_iam_role" "lambda-es-execution-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "es-intermodal-routing-access"
    policy = "{\r\n    \"Version\": \"2012-10-17\",\r\n    \"Statement\": [\r\n        {\r\n            \"Action\": [\r\n                \"es:*\"\r\n            ],\r\n            \"Effect\": \"Allow\",\r\n            \"Resource\": \"arn:aws:es:us-east-1:825437374987:domain/intermodal-routing/*\"\r\n        }\r\n    ]\r\n}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "lambda-es-execution-role"
  path                 = "/"
}

resource "aws_iam_role" "lambda-sns-execution-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/S3TransitDataAccess", "arn:aws:iam::aws:policy/AmazonSNSFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "lambda-sns-execution-role"
  path                 = "/"
}

resource "aws_iam_role" "lambda_basic_execution" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "oneClick_lambda_basic_execution_1485114895835"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:CreateLogGroup\",\n        \"logs:CreateLogStream\",\n        \"logs:PutLogEvents\"\n      ],\n      \"Resource\": \"arn:aws:logs:*:*:*\"\n    }\n  ]\n}"
  }

  max_session_duration = "3600"
  name                 = "lambda_basic_execution"
  path                 = "/"
}

resource "aws_iam_role" "lambda_w_S3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "oneClick_lambda_basic_execution_1485530778262"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Sid\": \"VisualEditor0\",\n            \"Effect\": \"Allow\",\n            \"Action\": [\n                \"s3:PutObject\",\n                \"s3:GetObject\",\n                \"logs:CreateLogStream\",\n                \"logs:CreateLogGroup\",\n                \"logs:PutLogEvents\"\n            ],\n            \"Resource\": [\n                \"arn:aws:logs:*:*:*\",\n                \"arn:aws:s3:::*\"\n            ]\n        },\n        {\n            \"Sid\": \"VisualEditor1\",\n            \"Effect\": \"Allow\",\n            \"Action\": \"s3:ListBucket\",\n            \"Resource\": \"arn:aws:s3:::*\"\n        }\n    ]\n}"
  }

  max_session_duration = "3600"
  name                 = "lambda_w_S3"
  path                 = "/"
}

resource "aws_iam_role" "mobi-eks-cluster-node-group2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::825437374987:root"
      }
    },
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.us-east-2.amazonaws.com/id/94878CE0C179877B9E81C56729E5040B:aud": "sts.amazonaws.com",
          "oidc.eks.us-east-2.amazonaws.com/id/94878CE0C179877B9E81C56729E5040B:sub": "system:serviceaccount:mobi:mobi-planner"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::825437374987:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/94878CE0C179877B9E81C56729E5040B"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications", "arn:aws:iam::825437374987:policy/PlannerEKSNodePolicy", "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy", "arn:aws:iam::aws:policy/AmazonAthenaFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy", "arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "mobi-eks-cluster-node-group2"
  path                 = "/"
}

resource "aws_iam_role" "mobi-eks-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"]
  max_session_duration = "3600"
  name                 = "mobi-eks-role"
  path                 = "/"
}

resource "aws_iam_role" "myRedshiftRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "myRedshiftRole"
  path                 = "/"
}

resource "aws_iam_role" "nbuu1a-2wc5zc" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "nbuu1a-2wc5zc-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::nbuu1a-uf66yvu/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "nbuu1a-2wc5zc"
  path                 = "/"
}

resource "aws_iam_role" "nbuu1a-prufk18" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "nbuu1a-prufk18-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::nbuu1a-uf66yvu/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "nbuu1a-prufk18"
  path                 = "/"
}

resource "aws_iam_role" "nbuu1a-wqtofz" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "nbuu1a-wqtofz-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::nbuu1a-uf66yvu/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "nbuu1a-wqtofz"
  path                 = "/"
}

resource "aws_iam_role" "ot47ym-51pc8g" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "edgelambda.amazonaws.com",
          "lambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "ot47ym-51pc8g-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::ot47ym-3s4qf8p/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "ot47ym-51pc8g"
  path                 = "/"
}

resource "aws_iam_role" "ot47ym-vlk2lnj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "edgelambda.amazonaws.com",
          "lambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "ot47ym-vlk2lnj-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Resource\":\"*\",\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"]},{\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::ot47ym-3s4qf8p/*\",\"Action\":[\"s3:GetObject\",\"s3:PutObject\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "ot47ym-vlk2lnj"
  path                 = "/"
}

resource "aws_iam_role" "rds-monitoring-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = "3600"
  name                 = "rds-monitoring-role"
  path                 = "/"
}

resource "aws_iam_role" "rm-data-updater-role-syqli4rx" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-f10ca15f-5306-4a24-ae00-246b52281049", "arn:aws:iam::825437374987:policy/service-role/AWSLambdaVPCAccessExecutionRole-88cfb39c-dcf2-4f48-9270-cdcb56322f2a"]
  max_session_duration = "3600"
  name                 = "rm-data-updater-role-syqli4rx"
  path                 = "/service-role/"
}

resource "aws_iam_role" "sis-tui-staging-driver_gps_tracking-role-89menq4r" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-9851f474-c309-41dc-8356-7a1f7d3086bc"]
  max_session_duration = "3600"
  name                 = "sis-tui-staging-driver_gps_tracking-role-89menq4r"
  path                 = "/service-role/"
}

resource "aws_iam_role" "sis-tui-staging-masterdata_updater-role-vwkzditl" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-38ce514b-b80c-4d73-a5fd-463951e264bb"]
  max_session_duration = "3600"
  name                 = "sis-tui-staging-masterdata_updater-role-vwkzditl"
  path                 = "/service-role/"
}

resource "aws_iam_role" "six-flags-park-data-authorizer-role-vgyh8nru" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-5d5cb460-9171-43d7-9824-fa7213d04278"]
  max_session_duration = "3600"
  name                 = "six-flags-park-data-authorizer-role-vgyh8nru"
  path                 = "/service-role/"
}

resource "aws_iam_role" "sls-drivergpstracking-dev-eu-central-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sls-drivergpstracking-dev-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-drivergpstracking-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-drivergpstracking-dev*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:PutItem\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:*:825437374987:table/*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sls-drivergpstracking-dev-eu-central-1-lambdaRole"
  path                 = "/"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_iam_role" "sls-tui-pre-eu-central-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sls-tui-pre-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-pre*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-pre*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:PutItem\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:*:825437374987:table/*\",\"Effect\":\"Allow\"},{\"Action\":[\"secretsmanager:GetSecretValue\"],\"Resource\":\"arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py\",\"Effect\":\"Allow\"},{\"Action\":[\"sqs:ReceiveMessage\"],\"Resource\":\"arn:aws:sqs:eu-central-1:825437374987:*\",\"Effect\":\"Allow\"},{\"Action\":[\"sqs:ReceiveMessage\",\"sqs:DeleteMessage\",\"sqs:GetQueueAttributes\"],\"Resource\":[\"arn:aws:sqs:eu-central-1:825437374987:pre_md_update_queue\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sls-tui-pre-eu-central-1-lambdaRole"
  path                 = "/"
}

resource "aws_iam_role" "sls-tui-prod-eu-central-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sls-tui-prod-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-prod*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-prod*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:PutItem\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:*:825437374987:table/*\",\"Effect\":\"Allow\"},{\"Action\":[\"secretsmanager:GetSecretValue\"],\"Resource\":\"arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py\",\"Effect\":\"Allow\"},{\"Action\":[\"sqs:ReceiveMessage\"],\"Resource\":\"arn:aws:sqs:eu-central-1:825437374987:*\",\"Effect\":\"Allow\"},{\"Action\":[\"sqs:ReceiveMessage\",\"sqs:DeleteMessage\",\"sqs:GetQueueAttributes\"],\"Resource\":[\"arn:aws:sqs:eu-central-1:825437374987:prod_md_update_queue\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sls-tui-prod-eu-central-1-lambdaRole"
  path                 = "/"
}

resource "aws_iam_role" "sls-tui-staging-eu-central-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sls-tui-staging-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-staging*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-staging*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:PutItem\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:*:825437374987:table/*\",\"Effect\":\"Allow\"},{\"Action\":[\"secretsmanager:GetSecretValue\"],\"Resource\":\"arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py\",\"Effect\":\"Allow\"},{\"Action\":[\"sqs:ReceiveMessage\"],\"Resource\":\"arn:aws:sqs:eu-central-1:825437374987:*\",\"Effect\":\"Allow\"},{\"Action\":[\"sqs:ReceiveMessage\",\"sqs:DeleteMessage\",\"sqs:GetQueueAttributes\"],\"Resource\":[\"arn:aws:sqs:eu-central-1:825437374987:staging_md_update_queue\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sls-tui-staging-eu-central-1-lambdaRole"
  path                 = "/"
}

resource "aws_iam_role" "sls-tui-uat-eu-central-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sls-tui-uat-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-uat*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:eu-central-1:825437374987:log-group:/aws/lambda/sls-tui-uat*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:PutItem\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:*:825437374987:table/*\",\"Effect\":\"Allow\"},{\"Action\":[\"secretsmanager:GetSecretValue\"],\"Resource\":\"arn:aws:secretsmanager:eu-central-1:825437374987:secret:tui-cps-secrets-DeY1Py\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sls-tui-uat-eu-central-1-lambdaRole"
  path                 = "/"
}

resource "aws_iam_role" "stacksets-exec-c2f6a349c14169d235450f9b214de3d1" {
  assume_role_policy = <<POLICY
{
  "Id": "stacksets-exec-c2f6a349c14169d235450f9b214de3d1-assume-role-policy",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::537272725562:role/aws-service-role/stacksets.cloudformation.amazonaws.com/AWSServiceRoleForCloudFormationStackSetsOrgAdmin"
      },
      "Sid": "1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role created by AWSCloudFormation StackSets"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "stacksets-exec-c2f6a349c14169d235450f9b214de3d1"
  name_prefix          = "stacksets-exec-c2f6a3"
  path                 = "/"
}

resource "aws_iam_role" "testlambda-role-vyhnm1p9" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-314862f7-05f4-4fb7-8824-0c6d5857c8b4"]
  max_session_duration = "3600"
  name                 = "testlambda-role-vyhnm1p9"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tui-masterdata-updater-role-o2fs07bb" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-94078351-b08e-46ae-a00d-da98da8d086e"]
  max_session_duration = "3600"
  name                 = "tui-masterdata-updater-role-o2fs07bb"
  path                 = "/service-role/"
}

resource "aws_iam_role" "us-east-1_yCoNrnkbE-authRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "ForAnyValue:StringLike": {
          "cognito-identity.amazonaws.com:amr": "authenticated"
        },
        "StringEquals": {
          "cognito-identity.amazonaws.com:aud": "us-east-1:12cb78d0-2a12-41db-ad86-93106c56a3c0"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "cognito-identity.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  max_session_duration = "3600"
  name                 = "us-east-1_yCoNrnkbE-authRole"
  path                 = "/"
}

resource "aws_iam_role" "us-east-1_yCoNrnkbE_Full-access" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "ForAnyValue:StringLike": {
          "cognito-identity.amazonaws.com:amr": "authenticated"
        },
        "StringEquals": {
          "cognito-identity.amazonaws.com:aud": "us-east-1:12cb78d0-2a12-41db-ad86-93106c56a3c0"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "cognito-identity.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "Full-access-Policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"CLICloudformationPolicy\",\"Effect\":\"Allow\",\"Action\":[\"cloudformation:DeleteStackSet\",\"cloudformation:DescribeStackSet\",\"cloudformation:UpdateStackSet\"],\"Resource\":[\"arn:aws:cloudformation:*:*:stack/amplify-*\"]},{\"Sid\":\"CLIManageviaCFNPolicy\",\"Effect\":\"Allow\",\"Action\":[\"cognito-idp:SetUserPoolMfaConfig\"],\"Resource\":\"*\",\"Condition\":{\"ForAnyValue:StringEquals\":{\"aws:CalledVia\":[\"cloudformation.amazonaws.com\"]}}},{\"Sid\":\"CLISDKCalls\",\"Effect\":\"Allow\",\"Action\":[\"lambda:GetLayerVersionByArn\",\"rekognition:DescribeCollection\",\"logs:DescribeLogStreams\",\"logs:GetLogEvents\",\"lex:GetBot\",\"lex:GetBuiltinIntent\",\"lex:GetBuiltinIntents\",\"lex:GetBuiltinSlotTypes\",\"lambda:InvokeFunction\",\"cognito-idp:ListIdentityProviders\"],\"Resource\":\"*\"},{\"Sid\":\"CLISSMSDKCalls\",\"Effect\":\"Allow\",\"Action\":[\"ssm:DeleteParameter\",\"ssm:DeleteParameters\",\"ssm:GetParameter\",\"ssm:GetParameters\",\"ssm:GetParametersByPath\",\"ssm:PutParameter\"],\"Resource\":\"arn:aws:ssm:*:*:parameter/amplify/*\"},{\"Sid\":\"GeoPowerUser\",\"Effect\":\"Allow\",\"Action\":[\"geo:*\"],\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess-Amplify"]
  max_session_duration = "3600"
  name                 = "us-east-1_yCoNrnkbE_Full-access"
  path                 = "/"
}

resource "aws_iam_role" "us-east-1_yCoNrnkbE_Manage-only" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "ForAnyValue:StringLike": {
          "cognito-identity.amazonaws.com:amr": "authenticated"
        },
        "StringEquals": {
          "cognito-identity.amazonaws.com:aud": "us-east-1:12cb78d0-2a12-41db-ad86-93106c56a3c0"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "cognito-identity.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "Amplify-Admin-ManageOnly-Policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AmplifyBackendManageOnlyPolicy\",\"Effect\":\"Allow\",\"Action\":[\"amplifybackend:getBackend*\"],\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "us-east-1_yCoNrnkbE_Manage-only"
  path                 = "/"
}

resource "aws_iam_role" "was_apigateway_logging_role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "apigateway.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows API Gateway to push logs to CloudWatch Logs."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"]
  max_session_duration = "3600"
  name                 = "was_apigateway_logging_role"
  path                 = "/"
}
