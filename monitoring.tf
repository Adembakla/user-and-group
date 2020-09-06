resource "aws_iam_group_membership" "monadmin" {
  name = "monadmin-membership"

  users = [
    aws_iam_user.monadmin1.name,
    aws_iam_user.monadmin2.name,
    aws_iam_user.monadmin3.name,
    aws_iam_user.monadmin4.name,
  ]

  group = aws_iam_group.monadmin.name
}

resource "aws_iam_group" "monadmin" {
  name = "monadmin"
}

resource "aws_iam_user" "monadmin1" {
  name = "monadmin1"
}

resource "aws_iam_user" "monadmin2" {
  name = "monadmin2"
}
resource "aws_iam_user" "monadmin3" {
  name = "monadmin3"
}

resource "aws_iam_user" "monadmin4" {
  name = "monadmin4"
}

resource "aws_iam_policy_attachment" "testmon-attach" {
  name       = "testmon-attachment"
  users      = [aws_iam_user.monadmin1.name,aws_iam_user.monadmin2.name,aws_iam_user.monadmin3.name,aws_iam_user.monadmin4.name]
  groups     = [aws_iam_group.monadmin.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess,arn:aws:iam::aws:policy/AmazonEC2FullAccess,arn:aws:iam::aws:policy/IAMFullAccess"
}
