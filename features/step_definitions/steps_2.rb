Dado("eu tenha localizado o iphone X") do
    visit('https://www.submarino.com.br/busca/iphone-x')
    assert_text('iphone x')
  end
  
  Quando("seleciono o iphone x") do
    find(:xpath, '//img[contains(@src,"132723729_1GG.png")]').click
   # click_link('/produto/132722700?pfm_carac=iphone%20x&pfm_index=2&pfm_page=search&pfm_pos=grid&pfm_type=search_page%20&sellerId')
    
   sleep 2


   click_on('Comprar')

  end

  sleep 2
  
  Então("coloco o {string} {string} no {string}") do |string, string2, string3|
    assert_text('Meu Carrinho' , 'Iphone X', '64gb')
  end