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
      escreval("Digite um n�mero qualquer: ")
      leia(num)
      
      par <- parOuImpar(num)
      
      se (par = verdadeiro) entao
         escreva("O n�mero ", num, " � PAR")
      senao
           escreva("O n�mero", num, " N�O � PAR")
      fimse
fimalgoritmo