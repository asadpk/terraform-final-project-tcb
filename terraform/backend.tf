

terraform {
  backend "s3" {
    bucket         = "tcb-devops-mods-state-hsp"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "humangov-terraform-state-lock-table"
  }
}
