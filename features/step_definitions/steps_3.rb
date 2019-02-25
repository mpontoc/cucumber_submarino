Dado("que eu agora procure por iphone X {int}GB") do |int|

  steps %{
    Dado que eu esteja no site Submarino 
   }


   fill_in('h_search-input', :with => 'iphone x 256GB')
   click_button('h_search-btn')

   sleep 2

  end
  
  Quando("seleciono agora o iphone X {int}GB") do |int|

    find(:xpath, '//img[contains(@src,"132722700_1GG.jpg")]').click
   
   sleep 2

    find(:xpath, '//a[contains(.,"Comprar")]', wait: 2).click
    
    #click_on('Comprar')

  end

  sleep 3

  Então("entro no {string} com {string}") do |string, string2|
    assert_text('Meu Carrinho' , 'Iphone X')
  end
  
  Então("espero agora {string} e {string}") do |string, string2|
    assert_text('256gb' , 'Prata')
  end

  Mas("não espero mais {string} e {string}") do |string, string2|
    assert_no_text('64gb' , 'Cinza')
  end
