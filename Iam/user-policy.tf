resource  "aws_iam_user" "tfuser"{
    name= "terraformuser"
}
resource "aws_iam_policy" "tfpolicy1"{
    name = "policy1"

    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

