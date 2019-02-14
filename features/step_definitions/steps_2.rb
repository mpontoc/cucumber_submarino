
Dado("eu tenha localizado o iphone X") do

  steps %{
    Dado que eu esteja no site Submarino
     Quando busco por iphone x
     Então localizo o produto iphone x 
     E estou na url pesquisada  
   }

   sleep 2

    assert_text('iphone x')

  end
  
  Quando("seleciono o iphone x") do

    find(:xpath, '//img[contains(@src,"132723729_1GG.png")]').click
   
   sleep 3
    
    click_on('Comprar')

  end

  sleep 3

  Então("coloco o {string} o {string}") do |string, string2|
    assert_text('Meu Carrinho' , 'Iphone X')
  end
  
  Então("espero {string} e {string}") do |string, string2|
    assert_text('64gb' , 'Cinza')
  end