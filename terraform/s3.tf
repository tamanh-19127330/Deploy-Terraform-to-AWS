resource "aws_s3_bucket" "example" {
  bucket = "terraform-buckettest1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_s3_bucket" "example1" {
  bucket = "terraform-buckettest2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "example1" {
  bucket = aws_s3_bucket.example1.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example1" {
  depends_on = [aws_s3_bucket_ownership_controls.example1]

  bucket = aws_s3_bucket.example1.id
  acl    = "private"
}

