#uso de page, boa prática, ter código limpo, facilitar manutenção do código, 
#melhor desempenho na refatorção do código
class ProdutoPage 
    
    def localiza_produto(produto)
        find('#twotabsearchtextbox', visible: false).set produto
        find('#nav-search-submit-text').click

        if (resultado_consulta())
           find('div [data-cel-widget="search_result_0"]').find('span[class="a-price-whole"]').click
            
        end

    end


    def resultado_consulta()
        page.has_css?('div [data-cel-widget="search_result_0"]')
    end


    def verifica_descricao(descricao)
        page.has_css?('#productTitle', text: descricao)
    end

end