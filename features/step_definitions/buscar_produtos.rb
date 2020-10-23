Dado ('que acessei o website do e-commerce') do
    visit('/')
end

Dado('que defini o filtro {string}') do |descricao|
    @descricao = descricao
end
  
  Quando('busco o produto') do
    @buscar_page.localiza_produto(@descricao)
  end
  
  Então('deve visualizar na tela o mesmo nome do produto selecionado no resultado da filtro') do
    expect(@buscar_page.verifica_descricao(@descricao)).to be true
  end