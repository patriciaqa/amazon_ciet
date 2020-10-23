#language: pt

Funcionalidade: Buscar produtos Amazon
            Para que eu possa visualizar detalhes de um produto no e-commerce
            Sendo um usuário do site Amazon
            Posso consultar o produto no home do site


   			
Cenário: Consulta com sucesso 
    Dado que acessei o website do e-commerce 
    E que defini o filtro "macbook pro com intel core i7 16GB" 
    Quando busco o produto
    Então deve visualizar na tela o mesmo nome do produto selecionado no resultado da filtro
