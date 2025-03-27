resource "aws_instance" "this" {
  ami = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [data.aws_ssm_parameter.bastian_sg_id.value]
   instance_type = "t3.micro"
   subnet_id = local.public_subnet_ids
tags = merge(
    var.common_tags,
    {
    Name = "${var.project_name}-${var.environment}-bastian"
    }
   )
 }