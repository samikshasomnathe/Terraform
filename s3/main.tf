provider "aws" {
    region = "ap-south-1"
}
resource "aws_s3_bucket" "tf_buckets" {
    count         = length(var.s3_bucket_names) //count will be 3
  bucket        = var.s3_bucket_names[count.index]
  acl           = "private"
  region        = "ap-south-1"
  
}
  
