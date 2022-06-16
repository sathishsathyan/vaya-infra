terraform {
  backend "s3" {
    bucket = "vaya-infra"
    key    = "vaya"
    region = "ap-south-1"
  }
}
