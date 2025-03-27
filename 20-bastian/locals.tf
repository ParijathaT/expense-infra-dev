
locals{
   public_subnet_ids = spit("," , data.aws_ssm_parameter.public_subnet_ids.value)[0]
}
