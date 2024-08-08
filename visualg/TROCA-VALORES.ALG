algoritmo "troca-valores"
var
   n: vetor[1..20] de inteiro
   c, aux: inteiro
   
inicio
      para c de 1 ate 20 faca
           leia(n[c])
      fimpara
      
      limpatela
      
      para c de 1 ate 20 faca
           escreval("N [", c:1, "] = ", n[c])
      fimpara
      
      para c de 1 ate 10 faca
           aux <- n[c]
           n[c] <- n[20 - c + 1]
           n[20 - c + 1] <- aux
      fimpara
      
      escreval("Valores Trocados: ")
      
      para c de 1 ate 20 faca
           escreval("N [", c:1, "] = ", n[c])
      fimpara
fimalgoritmo