resource "aws_iam_user_policy_attachment" "MetamanagementContainerTestUser_MetamanagementContainerRepositoryPermissions" {
  policy_arn = "arn:aws:iam::825437374987:policy/MetamanagementContainerRepositoryPermissions"
  user       = "MetamanagementContainerTestUser"
}

resource "aws_iam_user_policy_attachment" "auth0_AmazonSESFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
  user       = "auth0"
}

resource "aws_iam_user_policy_attachment" "caylent_paulo_AWSBillingReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess"
  user       = "caylent_paulo"
}

resource "aws_iam_user_policy_attachment" "caylent_paulo_EKS-All" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKS-All"
  user       = "caylent_paulo"
}

resource "aws_iam_user_policy_attachment" "caylent_paulo_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  user       = "caylent_paulo"
}

resource "aws_iam_user_policy_attachment" "circle_ci_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_AmazonKinesisFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonKinesisFullAccess"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_CircleCI_CloudFormation_IAM" {
  policy_arn = "arn:aws:iam::825437374987:policy/CircleCI_CloudFormation_IAM"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_CircleCI_CloudWatchLogs_CloudWatchEvents" {
  policy_arn = "arn:aws:iam::825437374987:policy/CircleCI_CloudWatchLogs_CloudWatchEvents"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_CircleCI_CodeDeploy" {
  policy_arn = "arn:aws:iam::825437374987:policy/CircleCI_CodeDeploy"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_CircleCI_ECR" {
  policy_arn = "arn:aws:iam::825437374987:policy/CircleCI_ECR"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_CircleCI_EKS" {
  policy_arn = "arn:aws:iam::825437374987:policy/CircleCI_EKS"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_CircleCI_Lambda" {
  policy_arn = "arn:aws:iam::825437374987:policy/CircleCI_Lambda"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_CircleCI_S3" {
  policy_arn = "arn:aws:iam::825437374987:policy/CircleCI_S3"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "circle_ci_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  user       = "circle_ci"
}

resource "aws_iam_user_policy_attachment" "cloudwatch_agent_AmazonEC2ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
  user       = "cloudwatch_agent"
}

resource "aws_iam_user_policy_attachment" "cloudwatch_agent_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  user       = "cloudwatch_agent"
}

resource "aws_iam_user_policy_attachment" "grafana_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  user       = "grafana"
}

resource "aws_iam_user_policy_attachment" "jamie_AWSGlueConsoleFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_AWSGlueConsoleSageMakerNotebookFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleSageMakerNotebookFullAccess"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_AWSGlueSchemaRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_AmazonAthenaFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_AmazonRedshiftFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_AwsGlueDataBrewFullAccessPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AwsGlueDataBrewFullAccessPolicy"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jamie_sts-assume-role" {
  policy_arn = "arn:aws:iam::825437374987:policy/sts-assume-role"
  user       = "jamie"
}

resource "aws_iam_user_policy_attachment" "jimmy_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  user       = "jimmy"
}

resource "aws_iam_user_policy_attachment" "jimmy_gabriel" {
  policy_arn = "arn:aws:iam::825437374987:policy/gabriel"
  user       = "jimmy"
}

resource "aws_iam_user_policy_attachment" "jude_AWSCodeBuildDeveloperAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildDeveloperAccess"
  user       = "jude"
}

resource "aws_iam_user_policy_attachment" "jude_AWSCodePipeline_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCodePipeline_FullAccess"
  user       = "jude"
}

resource "aws_iam_user_policy_attachment" "jude_IAMSelfService" {
  policy_arn = "arn:aws:iam::825437374987:policy/IAMSelfService"
  user       = "jude"
}

resource "aws_iam_user_policy_attachment" "karen_EKS-All" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKS-All"
  user       = "karen"
}

resource "aws_iam_user_policy_attachment" "max_AmazonAthenaFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  user       = "max"
}

resource "aws_iam_user_policy_attachment" "max_CloudFrontFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
  user       = "max"
}

resource "aws_iam_user_policy_attachment" "maxim_AWSCodeBuildAdminAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildAdminAccess"
  user       = "maxim"
}

resource "aws_iam_user_policy_attachment" "maxim_AWSCodePipelineFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCodePipelineFullAccess"
  user       = "maxim"
}

resource "aws_iam_user_policy_attachment" "maxim_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  user       = "maxim"
}

resource "aws_iam_user_policy_attachment" "maxim_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  user       = "maxim"
}

resource "aws_iam_user_policy_attachment" "maxim_ElasticLoadBalancingFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
  user       = "maxim"
}

resource "aws_iam_user_policy_attachment" "maxim_IAMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  user       = "maxim"
}

resource "aws_iam_user_policy_attachment" "maxim_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "maxim"
}

resource "aws_iam_user_policy_attachment" "michele_AWSGlueConsoleFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess"
  user       = "michele"
}

resource "aws_iam_user_policy_attachment" "michele_AWSGlueConsoleSageMakerNotebookFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleSageMakerNotebookFullAccess"
  user       = "michele"
}

resource "aws_iam_user_policy_attachment" "michele_AWSGlueSchemaRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess"
  user       = "michele"
}

resource "aws_iam_user_policy_attachment" "michele_AmazonAthenaFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  user       = "michele"
}

resource "aws_iam_user_policy_attachment" "michele_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  user       = "michele"
}

resource "aws_iam_user_policy_attachment" "michele_AwsGlueDataBrewFullAccessPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AwsGlueDataBrewFullAccessPolicy"
  user       = "michele"
}

resource "aws_iam_user_policy_attachment" "michele_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  user       = "michele"
}

resource "aws_iam_user_policy_attachment" "michelle_AmazonS3ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  user       = "michelle"
}

resource "aws_iam_user_policy_attachment" "murtagh_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  user       = "murtagh"
}

resource "aws_iam_user_policy_attachment" "nikhil_AWSCodeBuildAdminAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildAdminAccess"
  user       = "nikhil"
}

resource "aws_iam_user_policy_attachment" "nikhil_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  user       = "nikhil"
}

resource "aws_iam_user_policy_attachment" "nikhil_AmazonRDSReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSReadOnlyAccess"
  user       = "nikhil"
}

resource "aws_iam_user_policy_attachment" "nikhil_EKS-All" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKS-All"
  user       = "nikhil"
}

resource "aws_iam_user_policy_attachment" "nikhil_IAMSelfService" {
  policy_arn = "arn:aws:iam::825437374987:policy/IAMSelfService"
  user       = "nikhil"
}

resource "aws_iam_user_policy_attachment" "nikhil_Nikhil" {
  policy_arn = "arn:aws:iam::825437374987:policy/Nikhil"
  user       = "nikhil"
}

resource "aws_iam_user_policy_attachment" "planning_server_AWSLambdaRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaRole"
  user       = "planning_server"
}

resource "aws_iam_user_policy_attachment" "planning_server_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "planning_server"
}

resource "aws_iam_user_policy_attachment" "planning_server_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  user       = "planning_server"
}

resource "aws_iam_user_policy_attachment" "poi-generation-user_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  user       = "poi-generation-user"
}

resource "aws_iam_user_policy_attachment" "poi-generation-user_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  user       = "poi-generation-user"
}

resource "aws_iam_user_policy_attachment" "poi-generation-user_AmazonS3ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  user       = "poi-generation-user"
}

resource "aws_iam_user_policy_attachment" "profile_server_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "profile_server"
}

resource "aws_iam_user_policy_attachment" "profile_server_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  user       = "profile_server"
}

resource "aws_iam_user_policy_attachment" "qilong_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "qilong"
}

resource "aws_iam_user_policy_attachment" "qilong_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "qilong"
}

resource "aws_iam_user_policy_attachment" "routing_server_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "routing_server"
}

resource "aws_iam_user_policy_attachment" "routing_server_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  user       = "routing_server"
}

resource "aws_iam_user_policy_attachment" "scaleserp_batch_query_S3OnlyWriteObject" {
  policy_arn = "arn:aws:iam::825437374987:policy/S3OnlyWriteObject"
  user       = "scaleserp_batch_query"
}

resource "aws_iam_user_policy_attachment" "servicelocator_server_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "servicelocator_server"
}

resource "aws_iam_user_policy_attachment" "servicelocator_server_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  user       = "servicelocator_server"
}

resource "aws_iam_user_policy_attachment" "simon_AWSGlueConsoleFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_AWSGlueConsoleSageMakerNotebookFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleSageMakerNotebookFullAccess"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_AWSGlueSchemaRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_AmazonAthenaFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_AmazonRedshiftFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_AwsGlueDataBrewFullAccessPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AwsGlueDataBrewFullAccessPolicy"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "simon_sts-assume-role" {
  policy_arn = "arn:aws:iam::825437374987:policy/sts-assume-role"
  user       = "simon"
}

resource "aws_iam_user_policy_attachment" "sixflags_SixFlagsDataStream" {
  policy_arn = "arn:aws:iam::825437374987:policy/SixFlagsDataStream"
  user       = "sixflags"
}

resource "aws_iam_user_policy_attachment" "winston_AWSGlueConsoleFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AWSGlueConsoleSageMakerNotebookFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleSageMakerNotebookFullAccess"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AWSGlueSchemaRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AdministratorAccess-AWSElasticBeanstalk" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AdministratorAccess-Amplify" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AmazonAPIGatewayAdministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AmazonAthenaFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_AwsGlueDataBrewFullAccessPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AwsGlueDataBrewFullAccessPolicy"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "winston_CloudFrontFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
  user       = "winston"
}

resource "aws_iam_user_policy_attachment" "yuening_AWSGlueConsoleFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess"
  user       = "yuening"
}

resource "aws_iam_user_policy_attachment" "yuening_AWSGlueConsoleSageMakerNotebookFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleSageMakerNotebookFullAccess"
  user       = "yuening"
}

resource "aws_iam_user_policy_attachment" "yuening_AWSGlueSchemaRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess"
  user       = "yuening"
}

resource "aws_iam_user_policy_attachment" "yuening_AmazonAthenaFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  user       = "yuening"
}

resource "aws_iam_user_policy_attachment" "yuening_AwsGlueDataBrewFullAccessPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AwsGlueDataBrewFullAccessPolicy"
  user       = "yuening"
}

resource "aws_iam_user_policy_attachment" "yuening_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  user       = "yuening"
}

resource "aws_iam_user_policy_attachment" "yupeng_Billing" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
  user       = "yupeng"
}
