algoritmo "ordernar-vetor-02"
var
   v: vetor[1..30] de inteiro
   c: inteiro
   primeiros_20: logico
   
procedimento ordenarVetor()
var p, s, aux, max: inteiro
inicio
      se (primeiros_20 = verdadeiro) entao
         max <- 20
      senao
           max <- 30
      fimse
      
      para p de 1 ate (max - 1) faca
           para s de (p + 1) ate max faca
                se (v[p] > v[s]) entao
                   aux <- v[p]
                   v[p] <- v[s]
                   v[s] <- aux
                fimse
           fimpara
      fimpara
fimprocedimento

inicio
      para c de 1 ate 20 faca
           leia(v[c])
      fimpara
      
      limpatela
      
      primeiros_20 <- verdadeiro
      
      ordenarVetor
      
      para c de 21 ate 30 faca
           leia(v[c])
      fimpara
      
      limpatela
      
      primeiros_20 <- falso
      
      ordenarVetor()
      
      escreval("Vetor: ")
      para c de 1 ate 30 faca
           escreva(v[c])
      fimpara
      escreval()
fimalgoritmo