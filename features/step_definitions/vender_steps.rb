#contexto
Dado("que eu esteja na pagina de Produtos") do
    expect(current_url).to eq("/produtos")
end

#1scenario
Quando("eu clicar no botão vender do Hero 500GB") do
    @produtos_page.btn_vh500.click
end
  
Então("finalizo a venda com todos os dados") do
    @vendas_page.cadastro_completo
    @produtos_page.wait_for_popup_sucesso
    @produtos_page.btn_ok.click
end

#2scenario
Quando("eu clicar no botão vender do Hero 150GB") do
    @produtos_page.btn_vh150.click
end

#3scenario
Então("finalizo a venda sem preencher o e-mail") do
    @vendas_page.cadastro_sem_email
    @produtos_page.wait_for_popup_sucesso
    @produtos_page.btn_ok.click
end

#5scenario
Então("finalizo a venda sem preencher o cpf") do
    @vendas_page.cadastro_sem_cpf
    @produtos_page.wait_for_popup_sucesso
    @produtos_page.btn_ok.click
end

#7scenario
Quando("clicar no botão Avançar") do
    @vendas_page.btn_avancar.click
end
  
Então("valido a mensagem de erro") do
    expect(page).to have_content 'MSISDN deve conter no Mínimo 10 números'
end


#9scenario
Quando("eu clicar no botão Saiba Mais do Hero 500GB") do
    @produtos_page.btn_sm500.click
end
  
Então("valido que abre o pop-up do Hero 500GB") do
    find('.modal-claro-hero-pct-adicional-500gb-loja')    
end
  
Então("valido o texto do Hero 500GB") do
    assert_text("Utilize uma conexão segura para fazer suas compras online e movimentações financeiras. Crie perfis de segurança para os seus filhos e monitore o conteúdoo acessado e recebido por eles. Com o Hero você faz tudo isso e muito mais. Este plano lhe dará 500GB de Cloud.")    
    @produtos_page.btn_fechar.click
end

#10scenario
Quando("eu clicar no botão Saiba Mais do Hero 150GB") do
    @produtos_page.btn_sm150.click
end

Então("valido que abre o pop-up do Hero 150GB") do
    find('.modal-claro-hero-pct-adicional-150gb-loja')    
end
  
Então("valido o texto do Hero 150GB") do
    assert_text("Utilize uma conexão segura para fazer suas compras online e movimentações financeiras. Crie perfis de segurança para os seus filhos e monitore o conteúdoo acessado e recebido por eles. Com o Hero você faz tudo isso e muito mais. Este plano lhe dará 3 licenças de Segurança, 3 licenças de Wifi protegido, 3 licenças proteção Família e 150GB de Cloud.")    
    @produtos_page.btn_fechar.click
end
