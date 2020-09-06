resource "aws_iam_group_membership" "dbadmin" {
  name = "dbadmin-membership"

  users = [
    aws_iam_user.dbadmin1.name,
    aws_iam_user.dbadmin2.name,
  ]

  group = aws_iam_group.dbadmin.name
}

resource "aws_iam_group" "dbadmin" {
  name = "dbadmin"
}

resource "aws_iam_user" "dbadmin1" {
  name = "dbadmin1"
}

resource "aws_iam_user" "dbadmin2" {
  name = "dbadmin2"
}
provider "aws" {
  region = "us-west-1"
}
resource "aws_iam_policy_attachment" "testing-attach" {
  name       = "testing-attachment"
  groups     = [aws_iam_group.dbadmin.name]
  policy_arn = "arn:aws:iam::aws:policy/job-function/DatabaseAdministrator"
}
