#language: pt

Funcionalidade: Efetuar Busca Iphone X no Submarino

Cenário: Buscar no Submarino por Iphone X
    Dado que eu esteja no site Submarino
    Quando busco por iphone X 64GB
    Então localizo o produto iphone X 64GB
    E estou na url pesquisada


Cenário: Colocar Iphone X no carrinho
    Dado eu tenha localizado o iphone X 64GB
    Quando seleciono o iphone x
    Então coloco o "Meu carrinho" o "Iphone X"  
    Então espero "64gb" e "Cinza"
    Mas não espero "256gb" e "Prata"
