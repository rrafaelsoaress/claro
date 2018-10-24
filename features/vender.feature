#language: pt
@2feature @evidencia @login @logout
Funcionalidade: Efetuar venda
    Como usuario do Claro Vendas
    Quero efetuar uma venda
    
    Contexto: Home Produtos
        Dado que eu esteja na pagina de Produtos

    @1scenario 
    Cenário: Efetuar uma venda do Hero 500GB preenchendo todos os dados
        Quando eu clicar no botão vender do Hero 500GB
        Então finalizo a venda com todos os dados
    
    @2scenario 
    Cenário: Efetuar uma venda do Hero 150GB preenchendo todos os dados
        Quando eu clicar no botão vender do Hero 150GB
        Então finalizo a venda com todos os dados

    @3scenario  
    Cenário: Efetuar uma venda do Hero 500GB sem preencher o e-mail
        Quando eu clicar no botão vender do Hero 500GB
        Então finalizo a venda sem preencher o e-mail

    @4scenario 
    Cenário: Efetuar uma venda do Hero 150GB sem preencher o e-mail
        Quando eu clicar no botão vender do Hero 150GB
        Então finalizo a venda sem preencher o e-mail

    @5scenario  
    Cenário: Efetuar uma venda do Hero 500GB sem preencher o cpf
        Quando eu clicar no botão vender do Hero 500GB
        Então finalizo a venda sem preencher o cpf

    @6scenario 
    Cenário: Efetuar uma venda do Hero 150GB sem preencher o cpf
        Quando eu clicar no botão vender do Hero 150GB
        Então finalizo a venda sem preencher o cpf

    @7scenario 
    Cenário: Tentar uma venda do Hero 500GB sem preecher o número
        Quando eu clicar no botão vender do Hero 500GB
        E clicar no botão Avançar
        Então valido a mensagem de erro

    @8scenario 
    Cenário: Tentar uma venda do Hero 150GB sem preecher o número
        Quando eu clicar no botão vender do Hero 150GB
        E clicar no botão Avançar
        Então valido a mensagem de erro

    @9scenario 
    Cenário: Clicar no botão Saiba Mais do Hero 500GB
        Quando eu clicar no botão Saiba Mais do Hero 500GB
        Então valido que abre o pop-up do Hero 500GB
        E valido o texto do Hero 500GB

    @10scenario 
    Cenário: Clicar no botão Saiba Mais do Hero 150GB
        Quando eu clicar no botão Saiba Mais do Hero 150GB
        Então valido que abre o pop-up do Hero 150GB
        E valido o texto do Hero 150GB