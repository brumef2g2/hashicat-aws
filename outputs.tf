# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

#output "catapp_ip" {
#  value = "http://${aws_eip.hashicat.public_ip}"
#}

output "s3 bucket" {
  value = "http://${this_s3_bucket_bucket_regional_domain_name}"
}