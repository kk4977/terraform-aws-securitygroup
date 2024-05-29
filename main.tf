resource "aws_security_group" "allow_tls" {
  name        = local.sg_name_final
  description =  var.sg_description
  vpc_id      = var.vpc_id

   tags = merge(
    var.common_tags,
    var.sg_tags,
    {
        Name = local.sg_name_final
    }
  )
}