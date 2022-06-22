resource "aws_iam_group" "Administrator" {
  name = "Administrator"
  path = "/"
}

resource "aws_iam_group" "Billing" {
  name = "Billing"
  path = "/"
}

resource "aws_iam_group" "Developer" {
  name = "Developer"
  path = "/"
}

resource "aws_iam_group" "MobiCollaborators" {
  name = "MobiCollaborators"
  path = "/"
}

resource "aws_iam_group" "micro_services" {
  name = "micro_services"
  path = "/"
}
