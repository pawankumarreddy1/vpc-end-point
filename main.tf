terraform {
  backend "s3" {
    bucket = "my-tf-test-kdp-1"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
