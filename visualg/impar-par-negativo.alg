algoritmo "semnome"
var
   num: real
   par, impar, num_neg: logico
inicio
      num_neg <- falso
      
      escreva("Digite um n�mero: ")
      leia(num)
      
      
      se (num > 0) entao
      
         se (num % 2 = 0) entao
            par <- verdadeiro
            impar <- falso
         senao
              par <- falso
              impar <- verdadeiro
         fimse
         
      senao
           num_neg <- verdadeiro
           
           se (num % 2 = 0) entao
              par <- verdadeiro
              impar <- falso
           senao
                par <- falso
                impar <- verdadeiro
           fimse
      fimse
      
      se (num_neg = falso) entao
         se (par = verdadeiro) entao
            escreval("Este n�mero � PAR")
         senao
              se (impar = verdadeiro) entao
                escreval("Este n�mero � IMPAR ")
              fimse
         fimse
      senao
           se (num_neg = verdadeiro) entao
              escreval("Este n�mero n�o � POSITIVO")
              se (par = verdadeiro) entao
                 escreval("Por�m, ele � PAR")
              senao
                   se (impar = verdadeiro) entao
                      escreval("Por�m, ele � IMPAR")
                   fimse
              fimse
           fimse
      fimse
      
fimalgoritmo
