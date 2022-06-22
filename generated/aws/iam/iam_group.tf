resource "aws_iam_group" "tfer--Administrator" {
  name = "Administrator"
  path = "/"
}

resource "aws_iam_group" "tfer--Billing" {
  name = "Billing"
  path = "/"
}

resource "aws_iam_group" "tfer--Developer" {
  name = "Developer"
  path = "/"
}

resource "aws_iam_group" "tfer--MobiCollaborators" {
  name = "MobiCollaborators"
  path = "/"
}

resource "aws_iam_group" "tfer--micro_services" {
  name = "micro_services"
  path = "/"
}
