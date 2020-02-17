Quando("acesso a url") do
@home = PaginaInicial.new
@home.load
sleep(5)
#visit acessa o site e o load carrega
#visit '/treinamento/home'
sleep(5)


end

Então("verifico se estou na pagina inicial") do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com', url: true)

    
end 