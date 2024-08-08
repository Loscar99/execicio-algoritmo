algoritmo "semnome"
var
   par: logico
   num: inteiro
   
funcao parOuImpar(n: inteiro):logico
inicio
      se (n % 2 = 0) entao
         retorne verdadeiro
      senao
           retorne falso
      fimse
fimfuncao

inicio
      escreval("Digite um número qualquer: ")
      leia(num)
      
      par <- parOuImpar(num)
      
      se (par = verdadeiro) entao
         escreva("O número ", num, " é PAR")
      senao
           escreva("O número", num, " NÃO é PAR")
      fimse
fimalgoritmo