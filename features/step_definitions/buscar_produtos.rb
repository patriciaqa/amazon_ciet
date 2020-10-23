Dado('que defini o filtro {string} no website do e-commerce') do |descricao|
    @produto = descricao
  end
  
  Quando('buscar o produto') do
    @buscar_page.localiza_produto(@produto)
  end
  
  Então('deve visualizar na tela o mesmo nome do produto selecionado no resultado da filtro') do
    
  end