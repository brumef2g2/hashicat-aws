module "ec2-cluster" {
  source  = "app.terraform.io/BrumeOrg/ec2-instance/aws"
  version = "2.17.0"
  # insert required variables here

  name                   = "my-cluster"
  instance_count         = 10

  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.hashicat.key_name
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.hashicat.id]
  subnet_id              = aws_subnet.hashicat.id

  tags = {
    "Name" = "${var.prefix}-hashicat-instance"
    "Department" = "devops team"
    "Billable" = "true"
  }
}