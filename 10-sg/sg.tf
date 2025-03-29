module "mysql_sg" {
    #source = "../terraform-aws-securitygroup"
    source = "git::https://github.com/ParijathaT/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "Created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "backend_sg" {
    #source = "../terraform-aws-securitygroup"
    source = "git::https://github.com/ParijathaT/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "backend"
    sg_description = "Created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "frontend_sg" {
    #source = "../terraform-aws-securitygroup"
    source = "git::https://github.com/ParijathaT/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "frontend"
    sg_description = "Created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "bastian_sg" {
    #source = "../terraform-aws-securitygroup"
    source = "git::https://github.com/ParijathaT/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "bastian"
    sg_description = "Created for bastian instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

module "app-alb_sg" {
    #source = "../terraform-aws-securitygroup"
    source = "git::https://github.com/ParijathaT/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "app-alb"
    sg_description = "Created for backend alb instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}