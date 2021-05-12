# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}
#
#output "s3_bucket" {
#  value = "http://${this_s3_bucket_bucket_regional_domain_name}"
#}

#
output "s3_bucket_regional_domain_name" {
  description = "S3 Bucket information"
  value = "http://${module.s3-bucket.this_s3_bucket_bucket_regional_domain_name}/"
}

output "s3_bucket_domain_name" {
  description = "S3 Bucket Domain name"
  value = "http://${module.s3-bucket.this_s3_bucket_bucket_domain_name}/"
}

output "s3_bucket_arn" {
  description = "S3 Bucket Domain name"
  value = "http://${module.s3-bucket.this_s3_bucket_arn}/"
}

output "s3_bucket_Bucket_ID" {
  description = "S3 Bucket ID"
  value = "http://${module.s3-bucket.this_s3_bucket_id}/"
}
