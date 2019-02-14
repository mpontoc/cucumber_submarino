
Dado("eu tenha localizado o iphone X") do

    visit('https://www.submarino.com.br/busca/iphone-x')

  
    assert_text('iphone x')

  end
  
  Quando("seleciono o iphone x") do

    find(:xpath, '//img[contains(@src,"132723729_1GG.png")]').click
   
   sleep 3
    
    click_on('Comprar')

  end

  sleep 2

  Então("coloco o {string} o {string}") do |string, string2|
    assert_text('Meu Carrinho' , 'Iphone X')
  end
  
  Então("espero {string} e {string}") do |string, string2|
    assert_text('64gb' , 'Cinza')
  end