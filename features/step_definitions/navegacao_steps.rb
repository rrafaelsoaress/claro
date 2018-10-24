#1scenario
Quando("eu clicar no botão Menu Administrador") do
    all('a[href*="adm"]').first.click    
end
  
Então("devo ser direcionado para o Menu Administrador") do
    expect(current_url).to eq("https://claro-vendas.whitelabel.com.br/administradores/menu")
    sleep 0.5
end

#2scenario
Quando("eu clicar no botão do Perfil") do
    @produtos_page.btn_perfil.click
end
  
Então("devo ser direcionado para o Perfil") do
    expect(current_url).to eq("https://claro-vendas.whitelabel.com.br/perfil")
    sleep 0.5
end

#3scenario
Quando("eu clicar no botão da Loja") do
    @produtos_page.btn_loja.click
end
  
Então("devo ser direcionado para a Loja") do
    expect(current_url).to eq("https://claro-vendas.whitelabel.com.br/lojas/1842")  
    sleep 0.5
end

#4scenario
Quando("eu clicar no botão Nova Venda") do
    @produtos_page.btn_nvendas.click
end
  
Então("devo ser direcionado para a home de Produtos") do
    expect(current_url).to eq("https://claro-vendas.whitelabel.com.br/produtos") 
    sleep 0.5
end

#5scenario
Quando("eu clicar no botão Consultar Cliente") do
    @produtos_page.btn_ccliente.click
end
  
Então("devo ser direcionado para a home de Clientes") do
    expect(current_url).to eq("https://claro-vendas.whitelabel.com.br/clientes")
    sleep 0.5
end

#6scenario
Quando("eu clicar no botão Perguntas Frequentes") do
    @produtos_page.btn_faq.click
end
  
Então("devo ser direcionado para a home de Perguntas Frequentes") do
    expect(current_url).to eq("https://claro-vendas.whitelabel.com.br/perguntas-frequentes")  
    sleep 0.5
end