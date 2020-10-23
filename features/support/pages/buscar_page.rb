require 'site_prism'

#uso de page, boa prática, ter código limpo, facilitar manutenção do código, 
#melhor desempenho na refatorção do código
class ProdutoPage < SitePrism::Page
    
    #acesso ao home page Amazon
    set_url '/'

    #mapeamento dos elementos
    element :box_busca, '#twotabsearchtextbox'
    element :btn_ir, '#nav-search-submit-text'

    element :result, '[data-cel-widget="search_result_0"]'


    def localiza_produto(produto)
        box_busca.set produto
        btn_ir.click

        if (resultado_consulta())
            result.click

            
        end

    end


    def resultado_consulta()
        page.has_css?(result)
    end


    # def seleciona_produto()

    # end

    # def salva_nome_unidade(posicao_nome)
    #     grid_nome = page.all()
    #     unidade_nome_select = grid_nome[posicao_nome]
    #     nome_unidade = unidade_nome_select.find('')
    # end




end