algoritmo "soma-vetor"
var
   v1, v2: vetor[1..100] de inteiro
   v3: vetor[1..101] de inteiro
   quant: inteiro
   
procedimento lerVetor()
var c: inteiro
inicio
      //ler vetores v1 e v2
      para c de 1 ate 100 faca
           leia(v1[c])
           leia(v2[c])
      fimpara
fimprocedimento

procedimento somarVetor()
var c: inteiro
inicio
      para c de 1 ate 100 faca
           v3[c] <- v1[c] + v2[c]
      fimpara
fimprocedimento

procedimento mostrarVetor(max: inteiro)
var c: inteiro
inicio
      //mostrar v1
      escreva("V1 =  ")
      para c de 1 ate max faca
           escreva(v1[c]:4)
      fimpara
      escreval()
      
      //mostrar v2
      escreva("V2 = +")
      para c de 1 ate max faca
           escreva(v2[c]:4)
      fimpara
      escreval()
      
      escreval("---------------------------------------------")
      
      //mostrar v3
      escreva("V3 =  ")
      para c de 1 ate max faca
           escreva(v3[c]:4)
      fimpara
      escreval()
      
fimprocedimento


inicio
      escreval("Leitura de vetores: ")

      lerVetor()
      
      limpatela
      
      somarVetor()

      escreval("Quantos valores vão ser mostrados? ")
      leia(quant)
      mostrarVetor(quant)
fimalgoritmo
