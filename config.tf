terraform {
  backend "s3" {
    region               = "eu-west-1"
    bucket               = "mit-terraform-workshop"
    role_arn             = "arn:aws:iam::029718257588:role/ctm-developer-role"
    workspace_key_prefix = "workshop"
    key                  = "workshop.tfstate"
  }
}
