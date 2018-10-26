#contexto
Dado("que eu acessei o sistema") do
    @login_page.load
end
   
#1scenario
Quando("faço login com {string} e {string}") do |matricula,senha|
    @login_page.logar(matricula,senha)
end
   
Então("sou direcionado para a home do site") do
    expect(current_url).to eq("")
end

#2scenario
Então("vejo a seguinte mensagem de {string}") do |mensagem|
    expect(page).to have_content mensagem
end
