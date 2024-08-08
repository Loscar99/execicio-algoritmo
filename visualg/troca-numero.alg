algoritmo "troca"
// Função :
// Autor :
// Data : 02/07/2024
// Seção de Declarações 
var
   a, b, c, d, cont, aux: inteiro
   
procedimento troca(var x, y: inteiro)
var
   aux: inteiro
inicio
      aux <- x
      x <- y
      y <- aux
fimprocedimento
inicio
      leia (a, b, c, d)
      enquanto nao((a<=b) e (b<=c) e (c<=d)) faca
               se (d<c) entao
                  troca(d,c)
               fimse
               se (c<b) entao
                  troca(c,b)
               fimse
               se (b<a) entao
                  troca(a,b)
               fimse
      fimenquanto
      escreval("Resultado do enquanto: ", a, " ",b," ",c," ",d)
      repita
            se (d<c) entao
                  troca(d,c)
               fimse
               se (c<b) entao
                  troca(c,b)
               fimse
               se (b<a) entao
                  troca(a,b)
               fimse
      ate (a<=b) e (b<=c) e (c<=d)
      escreval("Resultado do repita: ",a, " ",b," ",c," ",d)
fimalgoritmo
