resource "aws_s3_bucket" "stage-kdp-1" {
  bucket = "my-tf-test-kdp-1"
  acl    = "private"
  tags = {
    Name = "pavan"
    Enviroment = "stage"
  }


  versioning {
    enabled = true
  }
}
