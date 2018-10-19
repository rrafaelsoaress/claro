#language: pt
@3feature
Funcionalidade: Efetuar venda
    Como usuario do Claro Vendas
    Quero navegar pela tela de Produtos
    Para validar se os direcionamento estão corretos

    Contexto: Home Produtos
        Dado que eu esteja na pagina de Produtos

    @1scenario @login
    Cenário: Validar acesso ao Menu Administrador
        Quando eu clicar no botão Menu Administrador
        Então devo ser direcionado para o Menu Administrador

    @2scenario @login
    Cenário: Validar acesso ao Perfil
        Quando eu clicar no botão do Perfil
        Então devo ser direcionado para o Perfil
    
    @3scenario @login
    Cenário: Validar acesso a Loja
        Quando eu clicar no botão da Loja
        Então devo ser direcionado para a Loja
    
    @4scenario @login
    Cenário: Validar acesso menu Nova Venda
        Quando eu clicar no botão Nova Venda
        Então devo ser direcionado para a home de Produtos

    @5scenario @login
    Cenário: Validar acesso menu Consultar Cliente
        Quando eu clicar no botão Consultar Cliente
        Então devo ser direcionado para a home de Clientes

    @6scenario @login
    Cenário: Validar acesso menu Perguntas Frequentes
        Quando eu clicar no botão Perguntas Frequentes
        Então devo ser direcionado para a home de Perguntas Frequentes