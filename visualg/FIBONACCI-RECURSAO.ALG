algoritmo "fibonacci-recursao"
var
   num, resp: inteiro
   
funcao fibonacci(n: inteiro): inteiro
var
inicio
      se (n = 0) ou (n = 1) entao
         retorne n
      senao
           retorne fibonacci(n-1) + fibonacci(n-2)
      fimse
fimfuncao

inicio
      leia(num)
      resp <- fibonacci(num)
      escreval(resp)
fimalgoritmo