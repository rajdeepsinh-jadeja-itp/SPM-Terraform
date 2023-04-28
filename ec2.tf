resource "aws_instance" "spm-ec2-jenkins" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.security-grp.id]
  key_name                    = "sakshi-key-pair"
  associate_public_ip_address = true

  tags = {
    Name  = "Rajdeep EC2 Jenkins"
    Owner = "rajdeepsinh.jadeja@intuitive.cloud"
  }

  user_data = file("${path.module}/user-data.sh")
}

resource "aws_instance" "spm-ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.security-grp.id]
  key_name                    = "sakshi-key-pair"
  associate_public_ip_address = true
  user_data = file("${path.module}/user-data.sh")

  tags = {
    Name  = "Rajdeep EC2"
    Owner = "rajdeepsinh.jadeja@intuitive.cloud"
  }
}