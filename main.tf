terraform {
  required_version = ">= 0.12" # colocando compatibilidade do terraform para 0.12
}

resource "aws_instance" "web" {
  ami       = "ami-0e66f5495b4efdd0f"
  subnet_id = "subnet-08fc65a0a4d2f35f7"
  instance_type = var.tipo
  key_name =  "turma3-julio-cert"
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0e90c5ee6c38917df"]
  root_block_device {
    encrypted = true
    volume_size = 8
  }

  tags = {
    Name = "${var.nome}",
    Itau = true
  }
}

# ami-0e66f5495b4efdd0f
# subnet-08fc65a0a4d2f35f7
# sg-0e90c5ee6c38917df
# turma3-julio-cert
