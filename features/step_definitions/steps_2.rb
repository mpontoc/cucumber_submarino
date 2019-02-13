Dado("eu tenha localizado o iphone X") do
    visit('https://www.submarino.com.br/busca/iphone-x')
    assert_text('iphone x')
  end
  
  Quando("seleciono o iphone x") do
    click_link('/produto/132722700?pfm_carac=iphone%20x&pfm_index=2&pfm_page=search&pfm_pos=grid&pfm_type=search_page%20&sellerId')
    click_on('Comprar')

    sleep 3

  end

  
  Então("coloco o Iphone X 64gb no Meu carrinho") do
    assert_text('Meu Carrinho' , 'Iphone X', '64gb')
  end