
Dado("eu tenha localizado o iphone X {int}GB") do |int|

  steps %{
    Dado que eu esteja no site Submarino
     Quando busco por iphone X 64GB
     Então localizo o produto iphone X 64GB
     E estou na url pesquisada  
   }

   sleep 2

    assert_text('iphone x')

  end
  
  Quando("seleciono o iphone X {int}GB") do |int|

    find(:xpath, '//img[contains(@src,"132723729_1GG.png")]').click
   
   sleep 2

    find(:xpath, '//a[contains(.,"Comprar")]', wait: 5).click
    
    #click_on('Comprar')

  end

  sleep 3

  Então("coloco o {string} o {string}") do |string, string2|
    assert_text('Meu Carrinho' , 'Iphone X')
  end
  
  Então("espero {string} e {string}") do |string, string2|
    assert_text('64gb' , 'Cinza')
  end

  Mas("não espero {string} e {string}") do |string, string2|
    assert_no_text('256gb' , 'Prata')
  end
