#language: pt

Funcionalidade: Efetuar Busca Iphone X no Submarino

Cenário: Buscar no Submarino por Iphone X
    Dado que eu esteja no site Submarino
    Quando busco por iphone x
    Então localizo o produto iphone x
    E estou na url pesquisada


Cenário: Colocar Iphone X no carrinho
    Dado eu tenha localizado o iphone X
    Quando seleciono o iphone x
    Então coloco o "Meu carrinho" o "Iphone X"  
    Mas não espero "64gb" e "Cinza"
