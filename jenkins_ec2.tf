module "ec2_instance_jnekins" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "jenkinsec2"
  ami                    = "ami-052efd3df9dad4825"
  instance_type          = "t2.micro"
  key_name               = "krr2"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.ingress-all.id]
  subnet_id              = "subnet-032f7601e487c833c"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
