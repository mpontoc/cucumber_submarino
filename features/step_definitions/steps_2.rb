
Dado("que eu procure por iphone X {int}GB") do |int|

  steps %{
    Dado que eu esteja no site Submarino 
   }

   fill_in('h_search-input', :with => 'iphone x 64GB')
   click_button('h_search-btn')

  end

  
  Quando("seleciono o iphone X {int}GB") do |int|

    find(:xpath, '//img[contains(@src,"132723729_1GG.png")]').click
   
   sleep 2

    find(:xpath, '//a[contains(.,"Comprar")]', wait: 2).click
    
    #click_on('Comprar')

  end

  sleep 3

  Então("entro no {string} o {string}") do |string, string2|
    assert_text('Meu Carrinho' , 'Iphone X')
  end
  
  Então("espero {string} e {string}") do |string, string2|
    assert_text('64gb' , 'Cinza')
  end

  Mas("não espero {string} e {string}") do |string, string2|
    assert_no_text('256gb' , 'Prata')
  end
