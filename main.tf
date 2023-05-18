terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-014d05e6b24240371" # ID da instancia Ubuntu na AWS
  instance_type = "t2.micro"
  key_name = "iac-terraform" # Chave de acesso SSH
  tags = {
    Name = "Server Django" # Nome da instancia
  }
}


/*
  COMANDS PROMPT
  terraform init (Inicia o projeto)
  terraform plan (Verifica todas as configurações)
  terraform apply (Aplica as configurações e provisiona a maquina na nuvem)
*/