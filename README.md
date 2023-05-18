# IAC Com Ansible e terraform
Servidor feito com Ansible e Terraform, para hospedagem do framework Django Web (Python)

## COMO RODAR O PROJETO
  ```terraform init``` (Inicia o projeto)
  ```terraform plan``` (Verifica todas as configurações)
  ```terraform apply``` (Aplica as configurações e provisiona a maquina na nuvem)

### Apos provisionar a maquina na nuvem
Crie uma chave de acesso SSH e vincule a maquina criada (REDES E SEGURANÇA -> Pares de chaves)
Permita o acesso SSH para o seu ip (REDES E SEGURANÇA -> Security groups)
E rode os seguintes comandos
``ansible-playbook playbook.yml -u ubuntu --private-key iac-terraform -i hosts.yml``

``. venv/bin/activate``
``python manage.py runserver 0.0.0.0:8000``
