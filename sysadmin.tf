resource "aws_iam_group_membership" "sysadmin" {
  name = "sysadmin-membership"

  users = [
    aws_iam_user.sysadmin1.name,
    aws_iam_user.sysadmin2.name,
  ]

  group = aws_iam_group.sysadmin.name
}

resource "aws_iam_group" "sysadmin" {
  name = "sysadmin"
}

resource "aws_iam_user" "sysadmin1" {
  name = "sysadmin1"
}

resource "aws_iam_user" "sysadmin2" {
  name = "sysadmin2"
}

resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  users      = [aws_iam_user.sysadmin1.name]
  groups     = [aws_iam_group.sysadmin.name]
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
}
