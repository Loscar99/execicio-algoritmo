algoritmo "soma-vetor-recursao"
var
   v: vetor[1..10] de inteiro
   resp, i: inteiro
   
funcao lerVetor(c: inteiro): inteiro
var soma: inteiro
inicio
      se (c = 1) entao
         retorne v[1]
      senao
           retorne v[c] + lerVetor(c - 1)
      fimse
fimfuncao
   
inicio
      para i de 1 ate 10 faca
           leia(v[i])
      fimpara
      resp <- lerVetor(i)
      limpatela
      escreval(resp)
fimalgoritmo