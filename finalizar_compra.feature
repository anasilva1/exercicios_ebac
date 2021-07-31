#language: pt

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