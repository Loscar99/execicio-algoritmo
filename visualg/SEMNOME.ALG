algoritmo "semnome"
var
   v: vetor[1..100] de inteiro
   vetor_par, vetor_impar: inteiro
   i: inteiro
   
funcao SomaVetorPar(c: inteiro): inteiro
var soma_par: inteiro
inicio
      se (c = 0) entao //termina a comparação
         retorne 0
      senao
           //Verifica se o número é par e o soma
           se (v[c] % 2 = 0) entao
              soma_par <- soma_par + v[c]
           fimse

           //Chama a se mesmo onde o valor de c seja menos 1
           retorne soma_par + SomaVetorPar(c - 1)
      fimse
fimfuncao

funcao SomaVetorImpar(c: inteiro): inteiro
var soma_impar: inteiro
inicio
      se (c = 0) entao
         retorne 0
      senao
           //verifica se o número é impar e o soma
           se (v[c] % 2 <> 0) entao
              soma_impar <- soma_impar + v[c]
           fimse

           //chama a se mesmo numa verção onde o c é menos 1
           retorne soma_impar + SomaVetorImpar(c - 1)
      fimse
fimfuncao
   
inicio
      para i de 1 ate 100 faca
           leia(v[i])
      fimpara
      
      limpatela
      
      para i de 1 ate 100 faca
           escreva(v[i]:3)
      fimpara
      escreval()
      
      vetor_par <- SomaVetorPar(i)
      vetor_impar <- SomaVetorImpar(i)
      
      escreval("Soma dos pares: ", vetor_par)
      escreval("Soma dos Imapares: ", vetor_impar)
fimalgoritmo