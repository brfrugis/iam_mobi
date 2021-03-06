resource "aws_iam_group_policy_attachment" "Administrator_AdministratorAccess" {
  group      = "Administrator"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "Billing_AWSBillingReadOnlyAccess" {
  group      = "Billing"
  policy_arn = "arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AWSBatchFullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AWSBatchFullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AWSCodePipelineFullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AWSCodePipelineFullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AWSLambdaFullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaFullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AmazonEC2ContainerRegistryFullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AmazonEC2FullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AmazonECS_FullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AmazonRDSFullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_AmazonS3FullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_CloudWatchFullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
}

resource "aws_iam_group_policy_attachment" "Developer_IAMFullAccess" {
  group      = "Developer"
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_group_policy_attachment" "MobiCollaborators_AWSCodeBuildDeveloperAccess" {
  group      = "MobiCollaborators"
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildDeveloperAccess"
}

resource "aws_iam_group_policy_attachment" "MobiCollaborators_AWSCodePipelineFullAccess" {
  group      = "MobiCollaborators"
  policy_arn = "arn:aws:iam::aws:policy/AWSCodePipelineFullAccess"
}
