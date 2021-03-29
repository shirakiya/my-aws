resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-aws-backend"
  acl    = "private"

  versioning {
    enabled = true
  }
}
