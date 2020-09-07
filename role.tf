
resource "aws_iam_group" "role" {
  name = "role"
}
resource "aws_iam_policy_attachment" "test1-attach" {
  name       = "test1-attachment"
  groups     = [aws_iam_group.role.name]
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}
resource "aws_iam_policy_attachment" "test2-attach" {
  name       = "test2-attachment4"
  groups     = [aws_iam_group.role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
resource "aws_iam_policy_attachment" "test3-attach" {
  name       = "test3-attachment"
  groups     = [aws_iam_group.role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}