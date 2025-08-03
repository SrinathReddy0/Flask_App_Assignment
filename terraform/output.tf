output "s3_bucket_name" {
  value = aws_s3_bucket.devops_bucket.bucket
}

output "kms_key_arn" {
  value = aws_kms_key.s3_kms.arn

}

output "ec2_public_ip" {
  value = aws_instance.jenkins.public_ip
}

output "ec2_id" {
  value = aws_instance.jenkins.id
}
