Before do
    @login_page = LoginPage.new
    @produtos_page = ProdutosPage.new
    @vendas_page = VendasPage.new
    @menuadm_page = MenuadmPage.new
end

Before('@login') do
    @login_page.load
    @login_page.logar('', '')
end

After('@logout') do 
    @produtos_page.btn_sair.click
end

After('@evidencia') do |scenario|
    if scenario.failed?
        nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
        nome_cenario = nome_cenario.gsub(' ', '-').downcase!            
        screenshot = "log/screenshot/falha/#{nome_cenario}.png"
        page.save_screenshot(screenshot)
        embed(screenshot, 'image/png', 'Evidencia')
    else
        nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
        nome_cenario = nome_cenario.gsub(' ', '-').downcase!            
        screenshot = "log/screenshot/sucesso/#{nome_cenario}.png"
        page.save_screenshot(screenshot)
        embed(screenshot, 'image/png', 'Evidencia')
    end
end
