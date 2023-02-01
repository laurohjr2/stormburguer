## Configuração do ambiente:
 - instalar o docker

## Configuração do banco

- rodar o container do banco de dados ( OBS: modificar a senha)
    - docker run -d --name storm-mongo -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=admin  -p 27017:27017 mongo


- 



### FUNCIONALIDADES
    - relatório de fechamento de caixa
    - gráfico de produtos mais vendidos
    - grafico de vendas por dia da semana
