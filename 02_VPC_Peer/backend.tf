terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "tf-legacy-backend-prod-terraform-state-bucket-1"
    key            = ""
  }
}
