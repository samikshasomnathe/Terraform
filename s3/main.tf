provider "aws" {
    region = "ap-south-1"
}
resource "aws_s3_bucket" "rugged_buckets" {
  count         = 10
  region        = "ap-south-1"
}