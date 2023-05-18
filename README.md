# IAC Com Ansible e terraform
Servidor feito com Ansible e Terraform, para hospedagem do framework Django Web (Python)

# TECNOLOGIAS UTILIZADAS
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white) 	![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white) ![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Django](https://img.shields.io/badge/django-%23092E20.svg?style=for-the-badge&logo=django&logoColor=white) ![DjangoREST](https://img.shields.io/badge/DJANGO-REST-ff1709?style=for-the-badge&logo=django&logoColor=white&color=ff1709&labelColor=gray)


## COMO RODAR O PROJETO
### Provisionar maquina na nuvem AWS
  ```terraform init``` (Inicia o projeto)
  
  ```terraform plan``` (Verifica todas as configurações)
  
  ```terraform apply``` (Aplica as configurações e provisiona a maquina na nuvem)

### Apos provisionar a maquina na nuvem
Crie uma chave de acesso SSH e vincule a maquina criada (REDES E SEGURANÇA -> Pares de chaves)

Permita o acesso SSH para o seu ip (REDES E SEGURANÇA -> Security groups)

E rode os seguintes comandos

``ansible-playbook playbook.yml -u ubuntu --private-key iac-terraform -i hosts.yml`` Acessa a maquina na nuvem e execulta o playbook

``. venv/bin/activate`` Ativa o venv

``python manage.py runserver 0.0.0.0:8000`` Inicia o serviço na web
