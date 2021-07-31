#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Para depois inserir no carrinho

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Dado que eu configure meu produto de acordo com meu tamanho e gosto
Quando eu selecionar a cor e o tamanho
E escolher a quantidade
Então deve permitir inserir o produto no carrinho

Cenário: Deve permitir apenas 10 produtos por venda
Dado que eu configure meu produto de acordo com meu tamanho e gosto
Quando eu selecionar a cor e o tamanho
E a quantidade de 10 produtos por venda
Então o sistema deve permitir a venda dos produtos

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Dado que eu configure meu produto de acordo com meu tamanho e gosto
Quando eu selecionar a cor, o tamanho e quantidade
E clicar no botão "limpar"
Então deve voltar ao estado original