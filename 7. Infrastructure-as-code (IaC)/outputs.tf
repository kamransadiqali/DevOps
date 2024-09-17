output "aws_ami_id" {
  value = data.aws_ami.latest-amazon-linux-image
}

output "aws_public_ip" {
  value = module.myapp-server.instance.aws_public_ip
}
