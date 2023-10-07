resource "aws_s3_bucket" "example" {
  bucket = "mtr050-minh-nhat-phan-bucket3"

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
  bucket = "mtr050-quynh-nhu-bucket-hihi"

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

resource "aws_s3_bucket" "example2" {
  bucket = "mtr050-nam-nguyen-hoai"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "example2" {
  bucket = aws_s3_bucket.example2.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example2" {
  depends_on = [aws_s3_bucket_ownership_controls.example2]

  bucket = aws_s3_bucket.example2.id
  acl    = "private"
}