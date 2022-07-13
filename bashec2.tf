module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "Bastion"
  ami                    = "ami-052efd3df9dad4825"
  instance_type          = "t2.micro"
  key_name               = "krr2"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.ingress-all-test.id]
  subnet_id              = "subnet-09176f31de7c19397"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
