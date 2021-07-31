#language: pt

Funcionalidade: Visualizar meus pedidos
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu queira visualizar meus pedidos

Cenário: Inserir dados válidos
Quando eu inserir dados válidos
E clicar no botão para prosseguir
Então deve ser direcionado para a tela de checkout

Cenário: Inserir um dos campos inválidos
Quando eu inserir em um dos campos inválidos
E colocar usuário ou senha inválida
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"
