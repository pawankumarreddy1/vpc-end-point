# resource "aws_iam_role" "s3-role" {
#   name = "s3-role"

#   # Terraform's "jsonencode" function converts a
#   # Terraform expression result to valid JSON syntax.
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Sid    = ""
#         Principal = {
#           Service = "ec2.amazonaws.com"
#         }
#       },
#     ]
#   })

#   tags = {
#     tag-key = "tag-value"
#   }
# }

# resource "aws_iam_policy" "apachepolicy" {
#   name        = "apachepolicy"
#   path        = "/"
#   description = "My test policy"
#   # Terraform's "jsonencode" function converts a
#   # Terraform expression result to valid JSON syntax.
#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#           "s3:*",
#         ]
#         Effect   = "Allow"
#         Resource = "*"
#       },
#     ]
#   })
# }

# resource "aws_iam_role_policy_attachment" "pavan" {
#   role       = aws_iam_role.s3-role.name
#   policy_arn = aws_iam_policy.apachepolicy.arn
# }


# resource "aws_iam_instance_profile" "cicd-iam" {
#   name = "pavan"
#   role = aws_iam_role.s3-role.name
# }