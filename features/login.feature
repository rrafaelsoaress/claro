#language: pt
@1feature @evidencia
Funcionalidade: Efetuar login
    Como usuario do Claro Vendas
    Quero acessar o site

        Contexto: Home
            Dado que eu acessei o sistema

        @1scenario @logout
        Cenário: Login
        Quando faço login com "fsadmin" e "Fsas123@"
        Então sou direcionado para a home do site 
               
        @2scenario
        Esquema do Cenario: Erros de login
        Quando faço login com <matricula> e <senha>
        Então vejo a seguinte mensagem de "<alerta>"

        Exemplos:
            | matricula | senha            | alerta                            |
            | ""        | "123"            | Matrícula é um campo obrigatório. |
            | "123"     | ""               | Senha é um campo obrigatório.     |
            | "123"     | "123"            | Usuário e/ou senha incorreto(s)   |