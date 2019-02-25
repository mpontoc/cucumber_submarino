#language: pt

Funcionalidade: Efetuar Busca Iphone X no Submarino

Cenário: Buscar no Submarino por Iphone X
    Dado que eu esteja no site Submarino


Cenário: Colocar Iphone X 64GB no carrinho
    Dado que eu procure por iphone X 64GB
    Quando seleciono o iphone X 64GB
    Então entro no "Meu carrinho" o "Iphone X"  
    Então espero "64gb" e "Cinza"
    Mas não espero "256gb" e "Prateado"

Cenário: Colocar Iphone X 256GB no carrinho
    Dado que eu agora procure por iphone X 256GB
    Quando seleciono agora o iphone X 256GB
    Então entro no "Meu carrinho" com "Iphone X"  
    Então espero agora "256GB" e "Prata"
    Mas não espero mais "64gb" e "Cinza"
