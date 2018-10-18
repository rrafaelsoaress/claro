Before do
    @login_page = LoginPage.new
    @produtos_page = ProdutosPage.new
    @vendas_page = VendasPage.new
    @menuadm_page = MenuadmPage.new
end

Before('@login') do
    @login_page.load
    @login_page.logar('fsadmin', 'Fsas@2018Claro')
end

After('@logout') do 
    @produtos_page.btn_sair.click
end