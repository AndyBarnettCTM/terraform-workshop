provider "aws" {
  region              = "eu-west-1"
  allowed_account_ids = ["029718257588"]

  assume_role {
    role_arn = "arn:aws:iam::029718257588:role/ctm-developer-role"
  }
}
