resource "aws_iam_role_policy_attachment" "AWS-QuickSetup-StackSet-Local-ExecutionRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWS-QuickSetup-StackSet-Local-ExecutionRole"
}

resource "aws_iam_role_policy_attachment" "AWSArtifactAccountSync_AWSArtifactAccountSync" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSArtifactAccountSync"
  role       = "AWSArtifactAccountSync"
}

resource "aws_iam_role_policy_attachment" "AWSCodePipelineServiceRole-us-east-1-stadium-simulation_AWSCodePipelineServiceRole-us-east-1-stadium-simulation" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSCodePipelineServiceRole-us-east-1-stadium-simulation"
  role       = "AWSCodePipelineServiceRole-us-east-1-stadium-simulation"
}

resource "aws_iam_role_policy_attachment" "AWSCodeStarNotifications-Chatbot-Slack-Role_AWS-Chatbot-NotificationsOnly-Policy-8f174c81-4a71-40d9-bcbb-3c3172992d77" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWS-Chatbot-NotificationsOnly-Policy-8f174c81-4a71-40d9-bcbb-3c3172992d77"
  role       = "AWSCodeStarNotifications-Chatbot-Slack-Role"
}

resource "aws_iam_role_policy_attachment" "AWSControlTowerExecution_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSControlTowerExecution"
}

resource "aws_iam_role_policy_attachment" "AWSDataPipelineEC2InstanceRole_AmazonEC2RoleforDataPipelineRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforDataPipelineRole"
  role       = "AWSDataPipelineEC2InstanceRole"
}

resource "aws_iam_role_policy_attachment" "AWSDataPipelineRole_AWSDataPipelineRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSDataPipelineRole"
  role       = "AWSDataPipelineRole"
}

resource "aws_iam_role_policy_attachment" "AWSFISServiceRole_AWSFISServiceRole" {
  policy_arn = "arn:aws:iam::825437374987:policy/AWSFISServiceRole"
  role       = "AWSFISServiceRole"
}

resource "aws_iam_role_policy_attachment" "AWSGlueServiceRole-AmexPoiDataCrawlerParquet_AWSGlueServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  role       = "AWSGlueServiceRole-AmexPoiDataCrawlerParquet"
}

resource "aws_iam_role_policy_attachment" "AWSGlueServiceRole-AmexPoiDataCrawlerParquet_AWSGlueServiceRole-AmexPoiDataCrawlerParquet" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSGlueServiceRole-AmexPoiDataCrawlerParquet"
  role       = "AWSGlueServiceRole-AmexPoiDataCrawlerParquet"
}

resource "aws_iam_role_policy_attachment" "AWSGlueServiceRole-AmexPoiDataCrawler_AWSGlueServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  role       = "AWSGlueServiceRole-AmexPoiDataCrawler"
}

resource "aws_iam_role_policy_attachment" "AWSGlueServiceRole-AmexPoiDataCrawler_AWSGlueServiceRole-AmexPoiDataCrawler" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSGlueServiceRole-AmexPoiDataCrawler"
  role       = "AWSGlueServiceRole-AmexPoiDataCrawler"
}

resource "aws_iam_role_policy_attachment" "AWSGlueServiceRole-destinationCrawler_AWSGlueServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  role       = "AWSGlueServiceRole-destinationCrawler"
}

resource "aws_iam_role_policy_attachment" "AWSGlueServiceRole-destinationCrawler_AWSGlueServiceRole-destinationCrawler" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSGlueServiceRole-destinationCrawler"
  role       = "AWSGlueServiceRole-destinationCrawler"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_AWSAdministratorAccess_8a2ad0e2c79db090_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSReservedSSO_AWSAdministratorAccess_8a2ad0e2c79db090"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_AWSOrganizationsFullAccess_83e8bbb79af18679_AWSOrganizationsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSOrganizationsFullAccess"
  role       = "AWSReservedSSO_AWSOrganizationsFullAccess_83e8bbb79af18679"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_AWSPowerUserAccess_ee1cd8af3aa648a5_PowerUserAccess" {
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
  role       = "AWSReservedSSO_AWSPowerUserAccess_ee1cd8af3aa648a5"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_AWSReadOnlyAccess_dfd8b2365e441a03_ViewOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
  role       = "AWSReservedSSO_AWSReadOnlyAccess_dfd8b2365e441a03"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_AWSServiceCatalogAdminFullAccess_4762e3cd7eca4e76_AWSServiceCatalogAdminFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSServiceCatalogAdminFullAccess"
  role       = "AWSReservedSSO_AWSServiceCatalogAdminFullAccess_4762e3cd7eca4e76"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_AdministratorAccess_ac909d5543214d9b_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSReservedSSO_AdministratorAccess_ac909d5543214d9b"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_DataScientist_cbb72e52c0a42bb0_DataScientist" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/DataScientist"
  role       = "AWSReservedSSO_DataScientist_cbb72e52c0a42bb0"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_DatabaseAdministrator_90f29d686eca966e_DatabaseAdministrator" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/DatabaseAdministrator"
  role       = "AWSReservedSSO_DatabaseAdministrator_90f29d686eca966e"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_NetworkAdministrator_f78fab1e71d7017e_NetworkAdministrator" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/NetworkAdministrator"
  role       = "AWSReservedSSO_NetworkAdministrator_f78fab1e71d7017e"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_PowerUserAccess_726af164bc935121_AWSControlTowerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSControlTowerServiceRolePolicy"
  role       = "AWSReservedSSO_PowerUserAccess_726af164bc935121"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_PowerUserAccess_726af164bc935121_PowerUserAccess" {
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
  role       = "AWSReservedSSO_PowerUserAccess_726af164bc935121"
}

resource "aws_iam_role_policy_attachment" "AWSReservedSSO_SystemAdministrator_427b0e019e8548f1_SystemAdministrator" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
  role       = "AWSReservedSSO_SystemAdministrator_427b0e019e8548f1"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAWSChatbot_AWSChatbotServiceLinkedRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSChatbotServiceLinkedRolePolicy"
  role       = "AWSServiceRoleForAWSChatbot"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAmazonEKSNodegroup_AWSServiceRoleForAmazonEKSNodegroup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"
  role       = "AWSServiceRoleForAmazonEKSNodegroup"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAmazonEKS_AmazonEKSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEKS"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAmazonElasticFileSystem_AmazonElasticFileSystemServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonElasticFileSystemServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonElasticFileSystem"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAmazonGuardDuty_AmazonGuardDutyServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonGuardDuty"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAmazonMQ_AmazonMQServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonMQServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonMQ"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAmazonSSM_AmazonSSMServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSSM"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAmazonSageMakerNotebooks_AmazonSageMakerNotebooksServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSageMakerNotebooks"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForApplicationAutoScaling_ECSService_AWSApplicationAutoscalingECSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_ECSService"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = "AWSServiceRoleForAutoScaling"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForBackup_AWSBackupServiceLinkedRolePolicyForBackup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"
  role       = "AWSServiceRoleForBackup"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForClientVPNConnections_ClientVPNServiceConnectionsRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceConnectionsRolePolicy"
  role       = "AWSServiceRoleForClientVPNConnections"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForClientVPN_ClientVPNServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceRolePolicy"
  role       = "AWSServiceRoleForClientVPN"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForCloudFormationStackSetsOrgMember_CloudFormationStackSetsOrgMemberServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudFormationStackSetsOrgMemberServiceRolePolicy"
  role       = "AWSServiceRoleForCloudFormationStackSetsOrgMember"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForCloudFrontLogger_AWSCloudFrontLogger" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSCloudFrontLogger"
  role       = "AWSServiceRoleForCloudFrontLogger"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForCodeStarNotifications_AWSCodeStarNotificationsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSCodeStarNotificationsServiceRolePolicy"
  role       = "AWSServiceRoleForCodeStarNotifications"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForComputeOptimizer_ComputeOptimizerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"
  role       = "AWSServiceRoleForComputeOptimizer"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForConfig_AWSConfigServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"
  role       = "AWSServiceRoleForConfig"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForDynamoDBKinesisDataStreamsReplication_DynamoDBKinesisReplicationServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/DynamoDBKinesisReplicationServiceRolePolicy"
  role       = "AWSServiceRoleForDynamoDBKinesisDataStreamsReplication"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForECRReplication_ECRReplicationServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ECRReplicationServiceRolePolicy"
  role       = "AWSServiceRoleForECRReplication"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForECS_AmazonECSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
  role       = "AWSServiceRoleForECS"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForElastiCache_ElastiCacheServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"
  role       = "AWSServiceRoleForElastiCache"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForFIS_AmazonFISServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonFISServiceRolePolicy"
  role       = "AWSServiceRoleForFIS"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForGlobalAccelerator_AWSGlobalAcceleratorSLRPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"
  role       = "AWSServiceRoleForGlobalAccelerator"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForLambdaReplicator_AWSLambdaReplicator" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSLambdaReplicator"
  role       = "AWSServiceRoleForLambdaReplicator"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForLexBots_AmazonLexBotPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonLexBotPolicy"
  role       = "AWSServiceRoleForLexBots"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForRedshift_AmazonRedshiftServiceLinkedRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRedshiftServiceLinkedRolePolicy"
  role       = "AWSServiceRoleForRedshift"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForSSO_AWSSSOServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = "AWSServiceRoleForSSO"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForServiceQuotas_ServiceQuotasServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ServiceQuotasServiceRolePolicy"
  role       = "AWSServiceRoleForServiceQuotas"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "AWSTransferLoggingAccess_AWSTransferLoggingAccess" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess"
  role       = "AWSTransferLoggingAccess"
}

resource "aws_iam_role_policy_attachment" "AWSTransferRole_aws-transfer-home-directory-only-policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/aws-transfer-home-directory-only-policy"
  role       = "AWSTransferRole"
}

resource "aws_iam_role_policy_attachment" "AmazonPersonalize-ExecutionRole-1617905147659_AmazonPersonalize-ExecutionPolicy-1617905147659" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AmazonPersonalize-ExecutionPolicy-1617905147659"
  role       = "AmazonPersonalize-ExecutionRole-1617905147659"
}

resource "aws_iam_role_policy_attachment" "AmazonPersonalize-ExecutionRole-1617905147659_AmazonPersonalizeFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonPersonalizeFullAccess"
  role       = "AmazonPersonalize-ExecutionRole-1617905147659"
}

resource "aws_iam_role_policy_attachment" "AmazonRedshift-CommandsAccessRole-20220127T093536_AmazonRedshift-CommandsAccessPolicy-20220127T093536" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AmazonRedshift-CommandsAccessPolicy-20220127T093536"
  role       = "AmazonRedshift-CommandsAccessRole-20220127T093536"
}

resource "aws_iam_role_policy_attachment" "AmazonRedshift-CommandsAccessRole-20220127T093536_AmazonRedshiftAllCommandsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftAllCommandsFullAccess"
  role       = "AmazonRedshift-CommandsAccessRole-20220127T093536"
}

resource "aws_iam_role_policy_attachment" "AmazonRedshift-CommandsAccessRole-20220127T093536_AmazonS3ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = "AmazonRedshift-CommandsAccessRole-20220127T093536"
}

resource "aws_iam_role_policy_attachment" "AmazonSSMExplorerExportRole_AmazonSSMExplorerExportRolePolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AmazonSSMExplorerExportRolePolicy"
  role       = "AmazonSSMExplorerExportRole"
}

resource "aws_iam_role_policy_attachment" "AmazonSageMaker-ExecutionRole-20210628T231528_AmazonSageMaker-ExecutionPolicy-20210628T231528" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AmazonSageMaker-ExecutionPolicy-20210628T231528"
  role       = "AmazonSageMaker-ExecutionRole-20210628T231528"
}

resource "aws_iam_role_policy_attachment" "AmazonSageMaker-ExecutionRole-20210628T231528_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20210628T231528"
}

resource "aws_iam_role_policy_attachment" "AmazonSageMaker-ExecutionRole-20220427T111683_AmazonSageMaker-ExecutionPolicy-20220427T111683" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AmazonSageMaker-ExecutionPolicy-20220427T111683"
  role       = "AmazonSageMaker-ExecutionRole-20220427T111683"
}

resource "aws_iam_role_policy_attachment" "AmazonSageMaker-ExecutionRole-20220427T111683_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20220427T111683"
}

resource "aws_iam_role_policy_attachment" "AmazonSageMakerServiceCatalogProductsLaunchRole_AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsLaunchRole"
}

resource "aws_iam_role_policy_attachment" "AmazonSageMakerServiceCatalogProductsUseRole_AmazonSageMakerServiceCatalogProductsUseRole-20210628T231683" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AmazonSageMakerServiceCatalogProductsUseRole-20210628T231683"
  role       = "AmazonSageMakerServiceCatalogProductsUseRole"
}

resource "aws_iam_role_policy_attachment" "AmexPoiGlueRole_AWSGlueServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  role       = "AmexPoiGlueRole"
}

resource "aws_iam_role_policy_attachment" "AmexPoiGlueRole_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "AmexPoiGlueRole"
}

resource "aws_iam_role_policy_attachment" "ApiGatewayRoleKinesisRW_AmazonKinesisFirehoseFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonKinesisFirehoseFullAccess"
  role       = "ApiGatewayRoleKinesisRW"
}

resource "aws_iam_role_policy_attachment" "ApiGatewayRoleKinesisRW_AmazonKinesisFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonKinesisFullAccess"
  role       = "ApiGatewayRoleKinesisRW"
}

resource "aws_iam_role_policy_attachment" "ApplicationAutoScalingForAmazonAppStreamAccess_ApplicationAutoScalingForAmazonAppStreamAccess" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/ApplicationAutoScalingForAmazonAppStreamAccess"
  role       = "ApplicationAutoScalingForAmazonAppStreamAccess"
}

resource "aws_iam_role_policy_attachment" "CloudwatchFullAccess_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "CloudwatchFullAccess"
}

resource "aws_iam_role_policy_attachment" "CodeBuildServiceRole_AmazonEC2ContainerRegistryPowerUser" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
  role       = "CodeBuildServiceRole"
}

resource "aws_iam_role_policy_attachment" "CodeBuildServiceRole_CodeBuildBasePolicy-BuildRiderscoreDashboard-us-east-1" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/CodeBuildBasePolicy-BuildRiderscoreDashboard-us-east-1"
  role       = "CodeBuildServiceRole"
}

resource "aws_iam_role_policy_attachment" "CodeBuildServiceRole_CodeBuildSecretsManagerPolicy-BuildRiderscoreDashboard-us-east-1" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/CodeBuildSecretsManagerPolicy-BuildRiderscoreDashboard-us-east-1"
  role       = "CodeBuildServiceRole"
}

resource "aws_iam_role_policy_attachment" "CodeBuildServiceRole_CodeBuildServiceRolePolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/CodeBuildServiceRolePolicy"
  role       = "CodeBuildServiceRole"
}

resource "aws_iam_role_policy_attachment" "CodeBuildServiceRole_CodeBuildTrustPolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/CodeBuildTrustPolicy"
  role       = "CodeBuildServiceRole"
}

resource "aws_iam_role_policy_attachment" "CodeDeploy-EC2-Instance-Profile_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "CodeDeploy-EC2-Instance-Profile"
}

resource "aws_iam_role_policy_attachment" "CodeDeploy-EC2-Instance-Profile_CloudWatchCreateLogStream" {
  policy_arn = "arn:aws:iam::825437374987:policy/CloudWatchCreateLogStream"
  role       = "CodeDeploy-EC2-Instance-Profile"
}

resource "aws_iam_role_policy_attachment" "CodeDeploy-EC2-Instance-Profile_CodeDeploy-EC2-Permissions" {
  policy_arn = "arn:aws:iam::825437374987:policy/CodeDeploy-EC2-Permissions"
  role       = "CodeDeploy-EC2-Instance-Profile"
}

resource "aws_iam_role_policy_attachment" "CodeDeploy-EC2-Instance-Profile_S3-For-PlanningLog" {
  policy_arn = "arn:aws:iam::825437374987:policy/S3-For-PlanningLog"
  role       = "CodeDeploy-EC2-Instance-Profile"
}

resource "aws_iam_role_policy_attachment" "CodeDeployServiceRole_AWSCodeDeployRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"
  role       = "CodeDeployServiceRole"
}

resource "aws_iam_role_policy_attachment" "DatadogAWSIntegrationRole_DatadogAWSIntegrationPolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/DatadogAWSIntegrationPolicy"
  role       = "DatadogAWSIntegrationRole"
}

resource "aws_iam_role_policy_attachment" "Datadog_AWS_Web_Services_Integration_Datadog_AWS_Web_Services_Integration_Policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/Datadog_AWS_Web_Services_Integration_Policy"
  role       = "Datadog_AWS_Web_Services_Integration"
}

resource "aws_iam_role_policy_attachment" "EC2_DisneyPOC_DisneyPOC" {
  policy_arn = "arn:aws:iam::825437374987:policy/DisneyPOC"
  role       = "EC2_DisneyPOC"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_EKSSecretsManagerPolicy-Applications" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_KinesisCrossAccountTUI" {
  policy_arn = "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_SNS_publish" {
  policy_arn = "arn:aws:iam::825437374987:policy/SNS_publish"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceDevRole_alb-ingress-controller-policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy"
  role       = "EKSNodeInstanceDevRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_KinesisCrossAccountTUI" {
  policy_arn = "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_PlannerEKSNodePolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/PlannerEKSNodePolicy"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_SNS_publish" {
  policy_arn = "arn:aws:iam::825437374987:policy/SNS_publish"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceRole_alb-ingress-controller-policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy"
  role       = "EKSNodeInstanceRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_EKSSecretsManagerPolicy-Applications" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_KinesisCrossAccountTUI" {
  policy_arn = "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_SNS_publish" {
  policy_arn = "arn:aws:iam::825437374987:policy/SNS_publish"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceStagingRole_alb-ingress-controller-policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy"
  role       = "EKSNodeInstanceStagingRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_EKSSecretsManagerPolicy-Applications" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_KinesisCrossAccountTUI" {
  policy_arn = "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_SNS_publish" {
  policy_arn = "arn:aws:iam::825437374987:policy/SNS_publish"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "EKSNodeInstanceUatRole_alb-ingress-controller-policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy"
  role       = "EKSNodeInstanceUatRole"
}

resource "aws_iam_role_policy_attachment" "HelloWorldFunction-role-sqhbv8z9_AWSLambdaBasicExecutionRole-f9eded41-771f-4d29-8416-c117dca8a387" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-f9eded41-771f-4d29-8416-c117dca8a387"
  role       = "HelloWorldFunction-role-sqhbv8z9"
}

resource "aws_iam_role_policy_attachment" "KinesisCrossAccountTUI2_KinesisCrossAccountTUI" {
  policy_arn = "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"
  role       = "KinesisCrossAccountTUI2"
}

resource "aws_iam_role_policy_attachment" "KinesisCrossAccountTUIDriverLocation_KinesisCrossAccountTUIDriverLocation" {
  policy_arn = "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUIDriverLocation"
  role       = "KinesisCrossAccountTUIDriverLocation"
}

resource "aws_iam_role_policy_attachment" "KinesisCrossAccountTUI_KinesisCrossAccountTUI" {
  policy_arn = "arn:aws:iam::825437374987:policy/KinesisCrossAccountTUI"
  role       = "KinesisCrossAccountTUI"
}

resource "aws_iam_role_policy_attachment" "KinesisFirehoseServiceRole-mobi-six-flag-us-east-1-1611177560958_KinesisFirehoseServicePolicy-mobi-six-flags-data-stream-us-east-1" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/KinesisFirehoseServicePolicy-mobi-six-flags-data-stream-us-east-1"
  role       = "KinesisFirehoseServiceRole-mobi-six-flag-us-east-1-1611177560958"
}

resource "aws_iam_role_policy_attachment" "LucidchartAwsImport_lucidchartAWSimport" {
  policy_arn = "arn:aws:iam::825437374987:policy/lucidchartAWSimport"
  role       = "LucidchartAwsImport"
}

resource "aws_iam_role_policy_attachment" "MonitoringTestAlertToOpsgenie-role-ecy6kecd_AWSLambdaBasicExecutionRole-b11af1e5-9370-4c37-ace5-35139195644b" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-b11af1e5-9370-4c37-ace5-35139195644b"
  role       = "MonitoringTestAlertToOpsgenie-role-ecy6kecd"
}

resource "aws_iam_role_policy_attachment" "OpsItem-CWE-Role_OpsItem-CWE-RolePolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/OpsItem-CWE-RolePolicy"
  role       = "OpsItem-CWE-Role"
}

resource "aws_iam_role_policy_attachment" "POIGenerationServiceSageMakerExecutionRole_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "POIGenerationServiceSageMakerExecutionRole"
}

resource "aws_iam_role_policy_attachment" "POIGeneratorTaskServiceRole_AmazonECSTaskExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = "POIGeneratorTaskServiceRole"
}

resource "aws_iam_role_policy_attachment" "POIGeneratorTaskServiceRole_POIGenerationTaskServerEFSAccess" {
  policy_arn = "arn:aws:iam::825437374987:policy/POIGenerationTaskServerEFSAccess"
  role       = "POIGeneratorTaskServiceRole"
}

resource "aws_iam_role_policy_attachment" "POIGeneratorTaskServiceRole_POIGenerator-S3SecretsCloudWatchLogsPolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/POIGenerator-S3SecretsCloudWatchLogsPolicy"
  role       = "POIGeneratorTaskServiceRole"
}

resource "aws_iam_role_policy_attachment" "StatesExecutionRole-us-east-1_StatesExecutionPolicy-us-east-1" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/StatesExecutionPolicy-us-east-1"
  role       = "StatesExecutionRole-us-east-1"
}

resource "aws_iam_role_policy_attachment" "TestRole_AWSLambdaBasicExecutionRole-aa07d6b2-4670-4673-bd0f-98a1e0e851fd" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-aa07d6b2-4670-4673-bd0f-98a1e0e851fd"
  role       = "TestRole"
}

resource "aws_iam_role_policy_attachment" "TestRole_AWSLambdaMicroserviceExecutionRole-0c0dae9b-d31d-4615-b6ae-feeb117f2d87" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaMicroserviceExecutionRole-0c0dae9b-d31d-4615-b6ae-feeb117f2d87"
  role       = "TestRole"
}

resource "aws_iam_role_policy_attachment" "TransitDataAlertToOpsgenie-role-ahu327wv_AWSLambdaBasicExecutionRole-1caa90f2-748d-4dcf-9237-185da14d89ad" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-1caa90f2-748d-4dcf-9237-185da14d89ad"
  role       = "TransitDataAlertToOpsgenie-role-ahu327wv"
}

resource "aws_iam_role_policy_attachment" "amplifyconsole-backend-role_AdministratorAccess-Amplify" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
  role       = "amplifyconsole-backend-role"
}

resource "aws_iam_role_policy_attachment" "aws-controltower-AdministratorExecutionRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "aws-controltower-AdministratorExecutionRole"
}

resource "aws_iam_role_policy_attachment" "aws-controltower-ConfigRecorderRole_AWS_ConfigRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
  role       = "aws-controltower-ConfigRecorderRole"
}

resource "aws_iam_role_policy_attachment" "aws-controltower-ConfigRecorderRole_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "aws-controltower-ConfigRecorderRole"
}

resource "aws_iam_role_policy_attachment" "aws-controltower-ForwardSnsNotificationRole_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "aws-controltower-ForwardSnsNotificationRole"
}

resource "aws_iam_role_policy_attachment" "aws-controltower-ReadOnlyExecutionRole_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "aws-controltower-ReadOnlyExecutionRole"
}

resource "aws_iam_role_policy_attachment" "aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkMulticontainerDocker" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkWebTier" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkWorkerTier" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "aws-elasticbeanstalk-service-role_AWSElasticBeanstalkEnhancedHealth" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"
  role       = "aws-elasticbeanstalk-service-role"
}

resource "aws_iam_role_policy_attachment" "aws-elasticbeanstalk-service-role_AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy"
  role       = "aws-elasticbeanstalk-service-role"
}

resource "aws_iam_role_policy_attachment" "aws_batch_service_role_AWSBatchServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole"
  role       = "aws_batch_service_role"
}

resource "aws_iam_role_policy_attachment" "bluesky-authenticator-role-dywn893c_AWSLambdaBasicExecutionRole-11c7cf9b-51ee-484c-85b2-69a599bd7e52" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-11c7cf9b-51ee-484c-85b2-69a599bd7e52"
  role       = "bluesky-authenticator-role-dywn893c"
}

resource "aws_iam_role_policy_attachment" "cloudcraft_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "cloudcraft"
}

resource "aws_iam_role_policy_attachment" "codebuild-BuildStadiumSimilation-service-role_CodeBuildBasePolicy-BuildStadiumSimilation-us-east-1" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/CodeBuildBasePolicy-BuildStadiumSimilation-us-east-1"
  role       = "codebuild-BuildStadiumSimilation-service-role"
}

resource "aws_iam_role_policy_attachment" "cwe-role-us-east-1-mobi-global-ui-staging_start-pipeline-execution-us-east-1-mobi-global-ui-staging" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/start-pipeline-execution-us-east-1-mobi-global-ui-staging"
  role       = "cwe-role-us-east-1-mobi-global-ui-staging"
}

resource "aws_iam_role_policy_attachment" "ecsAutoscaleRole_AmazonEC2ContainerServiceAutoscaleRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceAutoscaleRole"
  role       = "ecsAutoscaleRole"
}

resource "aws_iam_role_policy_attachment" "ecsEventsRole_AmazonEC2ContainerServiceEventsRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceEventsRole"
  role       = "ecsEventsRole"
}

resource "aws_iam_role_policy_attachment" "ecsInstanceRole_AmazonEC2ContainerServiceforEC2Role" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
  role       = "ecsInstanceRole"
}

resource "aws_iam_role_policy_attachment" "ecsTaskExecutionRole_AmazonECSTaskExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "ecs_instance_role_AmazonEC2ContainerServiceforEC2Role" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
  role       = "ecs_instance_role"
}

resource "aws_iam_role_policy_attachment" "eks-alb-ingress-controller_alb-ingress-controller-policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy"
  role       = "eks-alb-ingress-controller"
}

resource "aws_iam_role_policy_attachment" "eks-node-group-mobi_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "eks-node-group-mobi"
}

resource "aws_iam_role_policy_attachment" "eks-node-group-mobi_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "eks-node-group-mobi"
}

resource "aws_iam_role_policy_attachment" "eks-node-group-mobi_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "eks-node-group-mobi"
}

resource "aws_iam_role_policy_attachment" "eksClusterRole_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksClusterRole"
}

resource "aws_iam_role_policy_attachment" "eksClusterRole_EKSSecretsManagerPolicy-Applications" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications"
  role       = "eksClusterRole"
}

resource "aws_iam_role_policy_attachment" "eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksctl-staging-cluster-cluster-ServiceRole-1MLNFS8DCCIN"
}

resource "aws_iam_role_policy_attachment" "lambda-es-execution-role_CloudWatchReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"
  role       = "lambda-es-execution-role"
}

resource "aws_iam_role_policy_attachment" "lambda-sns-execution-role_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "lambda-sns-execution-role"
}

resource "aws_iam_role_policy_attachment" "lambda-sns-execution-role_AmazonSNSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
  role       = "lambda-sns-execution-role"
}

resource "aws_iam_role_policy_attachment" "lambda-sns-execution-role_S3TransitDataAccess" {
  policy_arn = "arn:aws:iam::825437374987:policy/S3TransitDataAccess"
  role       = "lambda-sns-execution-role"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_AmazonAthenaFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_EKSSecretsManagerPolicy-Applications" {
  policy_arn = "arn:aws:iam::825437374987:policy/EKSSecretsManagerPolicy-Applications"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_PlannerEKSNodePolicy" {
  policy_arn = "arn:aws:iam::825437374987:policy/PlannerEKSNodePolicy"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-cluster-node-group2_alb-ingress-controller-policy" {
  policy_arn = "arn:aws:iam::825437374987:policy/alb-ingress-controller-policy"
  role       = "mobi-eks-cluster-node-group2"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-role_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "mobi-eks-role"
}

resource "aws_iam_role_policy_attachment" "mobi-eks-role_AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = "mobi-eks-role"
}

resource "aws_iam_role_policy_attachment" "myRedshiftRole_AmazonS3ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = "myRedshiftRole"
}

resource "aws_iam_role_policy_attachment" "rds-monitoring-role_AmazonRDSEnhancedMonitoringRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
  role       = "rds-monitoring-role"
}

resource "aws_iam_role_policy_attachment" "rm-data-updater-role-syqli4rx_AWSLambdaBasicExecutionRole-f10ca15f-5306-4a24-ae00-246b52281049" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-f10ca15f-5306-4a24-ae00-246b52281049"
  role       = "rm-data-updater-role-syqli4rx"
}

resource "aws_iam_role_policy_attachment" "rm-data-updater-role-syqli4rx_AWSLambdaVPCAccessExecutionRole-88cfb39c-dcf2-4f48-9270-cdcb56322f2a" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaVPCAccessExecutionRole-88cfb39c-dcf2-4f48-9270-cdcb56322f2a"
  role       = "rm-data-updater-role-syqli4rx"
}

resource "aws_iam_role_policy_attachment" "sis-tui-staging-driver_gps_tracking-role-89menq4r_AWSLambdaBasicExecutionRole-9851f474-c309-41dc-8356-7a1f7d3086bc" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-9851f474-c309-41dc-8356-7a1f7d3086bc"
  role       = "sis-tui-staging-driver_gps_tracking-role-89menq4r"
}

resource "aws_iam_role_policy_attachment" "sis-tui-staging-masterdata_updater-role-vwkzditl_AWSLambdaBasicExecutionRole-38ce514b-b80c-4d73-a5fd-463951e264bb" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-38ce514b-b80c-4d73-a5fd-463951e264bb"
  role       = "sis-tui-staging-masterdata_updater-role-vwkzditl"
}

resource "aws_iam_role_policy_attachment" "six-flags-park-data-authorizer-role-vgyh8nru_AWSLambdaBasicExecutionRole-5d5cb460-9171-43d7-9824-fa7213d04278" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-5d5cb460-9171-43d7-9824-fa7213d04278"
  role       = "six-flags-park-data-authorizer-role-vgyh8nru"
}

resource "aws_iam_role_policy_attachment" "stacksets-exec-c2f6a349c14169d235450f9b214de3d1_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "stacksets-exec-c2f6a349c14169d235450f9b214de3d1"
}

resource "aws_iam_role_policy_attachment" "testlambda-role-vyhnm1p9_AWSLambdaBasicExecutionRole-314862f7-05f4-4fb7-8824-0c6d5857c8b4" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-314862f7-05f4-4fb7-8824-0c6d5857c8b4"
  role       = "testlambda-role-vyhnm1p9"
}

resource "aws_iam_role_policy_attachment" "tui-masterdata-updater-role-o2fs07bb_AWSLambdaBasicExecutionRole-94078351-b08e-46ae-a00d-da98da8d086e" {
  policy_arn = "arn:aws:iam::825437374987:policy/service-role/AWSLambdaBasicExecutionRole-94078351-b08e-46ae-a00d-da98da8d086e"
  role       = "tui-masterdata-updater-role-o2fs07bb"
}

resource "aws_iam_role_policy_attachment" "us-east-1_yCoNrnkbE_Full-access_AdministratorAccess-Amplify" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
  role       = "us-east-1_yCoNrnkbE_Full-access"
}

resource "aws_iam_role_policy_attachment" "was_apigateway_logging_role_AmazonAPIGatewayPushToCloudWatchLogs" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"
  role       = "was_apigateway_logging_role"
}
