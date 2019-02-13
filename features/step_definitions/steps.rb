Dado("que eu esteja no site Submarino") do
    url = 'http://www.submarino.com.br'
  visit(url) 
end

Quando("busco por iphone x") do
  fill_in('h_search-input', :with => 'iphone x')
  click_button('h_search-btn')
end

Então("localizo o produto iphone x") do
  assert_text('iphone x')
  url = 'https://www.submarino.com.br/busca/iphone-x'
  puts(url)
end