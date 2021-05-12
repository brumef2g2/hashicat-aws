#module "ec2-instance" {
#  source  = "app.terraform.io/BrumeOrg/ec2-instance/aws"
#  version = "2.17.0"
  # insert required variables here
#}

module "ec2-instance" {
  source  = "app.terraform.io/BrumeOrg/ec2-instance/aws"
  version = "2.17.0"
instance_count  = var.instance_count
#instance_count = 1
#resource "aws_instance" "hashicat2.0" {
  name          = "hashicat"
  ami           = data.aws_ami.ubuntu.id
  #ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  #instance_type = "t2.micro"
  #subnet_id                   = tolist(data.aws_subnet.hashicat.id)[0]
  subnet_id     = aws_subnet.hashicat.id
  #private_ips                 = ["172.31.32.5", "172.31.46.20"]
  vpc_security_group_ids      = [aws_security_group.hashicat.id]
  #vpc_security_group_ids      = [module.security_group.this_security_group_id]
  associate_public_ip_address = true
 # placement_group             = aws_placement_group.web.id

  #user_data_base64 = base64encode(local.user_data)

  root_block_device = [
    {
      volume_type = "gp2"
      volume_size = 10
    },
  ]

  ebs_block_device = [
    {
      device_name = "/dev/sdf"
      volume_type = "gp2"
      volume_size = 5
      encrypted   = false
  #    kms_key_id  = aws_kms_key.this.arn
    }
  ]

  tags = {
    "Name" = "${var.prefix}-hashicat-instance"
    "Department" = "devops team"
    "Billable" = "true"
  }
}