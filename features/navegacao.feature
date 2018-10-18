#language: pt
@3feature
Funcionalidade: Efetuar venda
    Como usuario do Claro Vendas
    Quero navegar pela tela de Produtos
    Para validar se os direcionamento estão corretos

    Contexto: Home Produtos
        Dado que eu esteja na pagina de Produtos

    # @login
    # Cenário: Validar as rotas
    #     Quando eu clicar nos botões da tela
    #     Então devo ser direcionado para as rotas corretas

    @login @1scenario
    Cenário: Validar acesso ao Menu Administrador
        Quando eu clicar no botão Menu Administrador
        Então devo ser direcionado para o Menu Administrador

    @login @2scenario
    Cenário: Validar acesso ao Perfil
        Quando eu clicar no botão do Perfil
        Então devo ser direcionado para o Perfil
    
    @login @3scenario
    Cenário: Validar acesso a Loja
        Quando eu clicar no botão da Loja
        Então devo ser direcionado para a Loja
    
    @login @4scenario
    Cenário: Validar acesso menu Nova Venda
        Quando eu clicar no botão Nova Venda
        Então devo ser direcionado para a home de Produtos

    @login @5scenario
    Cenário: Validar acesso menu Consultar Cliente
        Quando eu clicar no botão Consultar Cliente
        Então devo ser direcionado para a home de Clientes

    @login @6scenario
    Cenário: Validar acesso menu Perguntas Frequentes
        Quando eu clicar no botão Perguntas Frequentes
        Então devo ser direcionado para a home de Perguntas Frequentes