resource "aws_iam_group_membership" "team3" {
  name = "tf-testing-group3-membership"
  users = [
    aws_iam_user.monitor1.name,
    aws_iam_user.monitor2.name,
    aws_iam_user.monitor3.name,
    aws_iam_user.monitor4.name,
  ]
  group = aws_iam_group.monitoring.name
}
resource "aws_iam_group" "monitoring" {
  name = "monitoring"
}
resource "aws_iam_user" "monitor1" {
  name = "monitor1"
}
resource "aws_iam_user" "monitor2" {
  name = "monitor2"
}
resource "aws_iam_user" "monitor3" {
  name = "monitor3"
}
resource "aws_iam_user" "monitor4" {
  name = "monitor4"
}
resource "aws_iam_policy_attachment" "test-attach3" {
  name       = "test-attachment3"
  groups     = [aws_iam_group.monitoring.name]
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}
resource "aws_iam_policy_attachment" "test-attach4" {
  name       = "test-attachment4"
  groups     = [aws_iam_group.monitoring.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
resource "aws_iam_policy_attachment" "test-attach5" {
  name       = "test-attachment5"
  groups     = [aws_iam_group.monitoring.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
