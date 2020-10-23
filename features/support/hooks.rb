Before do
    @buscar_page = ProdutoPage.new
  end
    
  
  After do |scenario|
    nome = scenario.name.tr(' ', '_').downcase!
    nome = nome.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'')
    print = "reports/evidences/#{nome}.png"
    page.save_screenshot(print)
    embed(print, 'image/png', 'Clique aqui para ver as evidências')
  end
