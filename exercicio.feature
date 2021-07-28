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


            Esquema do Cenário: Finalizar minha compra
            Quando eu cadastrar os dados obrigatórios <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha        | mensagem     |
            | "joao@ebac.com.br"  | "teste@123*" | "Olá João!"  |
            | "ana@ebac.com.br"   | "teste@123"  | "Olá Ana!"   |
            | "luana@ebac.com.br" | "teste@123"  | "Olá Luana!" |

            Esquema do Cenário: Finalizar minha compra
            Quando eu inserir no campo o e-mail com o formato inválido <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | usuario             | senha        | mensagem          |
            | "joao@br"           | "teste@123*" | "Campo inválido!" |
            | "ana123.com.br"     | "teste@123"  | "Campo inválido!" |
            | "luanaebac.com.br@" | "teste@123"  | "Campo inválido!" |


            Esquema do Cenário: Finalizar minha compra
            Quando tentar cadastrar com os campos vazios <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | usuario   | senha       | mensagem       |
            | "joao@br" | ""          | "Campo vazio!" |
            | ""        | "teste@123" | "Campo vazio!" |
            | ""        | ""          | "Campo vazio!" |

