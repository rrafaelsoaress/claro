class LoginPage < SitePrism::Page
    set_url 'https://claro-vendas.whitelabel.com.br'
    element :campo_matricula, '#email_user_code'
    element :campo_senha, '#password'
    element :btn_entrar, '.btn'
    element :logo, 'a[href="./"]'

    def logar(matricula,senha)
        campo_matricula.set matricula
        campo_senha.set senha
        btn_entrar.click
    end
end