module "alb" {
  source = "terraform-aws-modules/alb/aws"
  internal=true
  # expense-dev-app-alb
  name    = "${var.project_name}-${var.environment}-app-alb"
  vpc_id  = data.aws_ssm_parameter.vpc_id.value
  subnets = local.private_subnet_ids
  create_security_group = false
  security_groups = [local.app_alb_sg_id]
  enable_delete_protection = false

  tags = merge(
    var.common_tags,
    {
    name = "${var.project_name}-${var.environment}-app-alb"
  }
  )
}

# resource "aws_lb" "front_end" {
#   # ...
# }

# resource "aws_lb_listener" "front_end" {
#   load_balancer_arn = aws_lb.front_end.arn
#   port              = "80"
#   protocol          = "HTTP"

#   default_action {
#     type = "fixed-response"

#     fixed_response {
#       content_type = "text/plain"
#       message_body = "Fixed response content"
#       status_code  = "200"
#     }
#   }
# }