data "aws_ami" "my_ami" {
  most_recent = true
  name_regex  = "^DevOpsClass-B32"
  owners      = ["986554155585"]
}


resource "aws_instance" "web-1" {
  ami                         = data.aws_ami.my_ami.id
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "Vinay2"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
}

resource "aws_instance" "web-2" {
  ami                         = data.aws_ami.my_ami.id
  availability_zone           = "us-east-1b"
  instance_type               = "t2.micro"
  key_name                    = "Vinay2"
  subnet_id                   = aws_subnet.subnet2-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-2"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
}

resource "aws_instance" "web-3" {
  ami                         = data.aws_ami.my_ami.id
  availability_zone           = "us-east-1c"
  instance_type               = "t2.micro"
  key_name                    = "Vinay2"
  subnet_id                   = aws_subnet.subnet3-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-3"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
}

// resource "aws_instance" "web-4" {
//   ami                         = data.aws_ami.my_ami.id
//   availability_zone           = "us-east-1c"
//   instance_type               = "t2.micro"
//   key_name                    = "LaptopKey"
//   subnet_id                   = aws_subnet.subnet3-public.id
//   vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
//   associate_public_ip_address = true
//   tags = {
//     Name       = "Server-4"
//     Env        = "Prod"
//     Owner      = "Sree"
//     CostCenter = "ABCD"
//   }
// }

// resource "aws_instance" "web-5" {
//   ami                         = data.aws_ami.my_ami.id
//   availability_zone           = "us-east-1c"
//   instance_type               = "t2.micro"
//   key_name                    = "LaptopKey"
//   subnet_id                   = aws_subnet.subnet3-public.id
//   vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
//   associate_public_ip_address = true
//   tags = {
//     Name       = "Server-5"
//     Env        = "Prod"
//     Owner      = "Sree"
//     CostCenter = "ABCD"
//   }
// }