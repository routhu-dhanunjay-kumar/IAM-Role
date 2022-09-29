
provider "aws" {
      region     = "${var.region}"
}
data "aws_iam_policy_document" "cross_account_assume_role_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = var.principal_arns
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "cross_account_assume_role" {
  name               = var.name
  assume_role_policy = data.aws_iam_policy_document.cross_account_assume_role_policy.json
}
