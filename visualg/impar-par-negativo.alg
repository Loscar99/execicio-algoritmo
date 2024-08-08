algoritmo "semnome"
var
   num: real
   par, impar, num_neg: logico
inicio
      num_neg <- falso
      
      escreva("Digite um número: ")
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
            escreval("Este número é PAR")
         senao
              se (impar = verdadeiro) entao
                escreval("Este número é IMPAR ")
              fimse
         fimse
      senao
           se (num_neg = verdadeiro) entao
              escreval("Este número não é POSITIVO")
              se (par = verdadeiro) entao
                 escreval("Porém, ele é PAR")
              senao
                   se (impar = verdadeiro) entao
                      escreval("Porém, ele é IMPAR")
                   fimse
              fimse
           fimse
      fimse
      
fimalgoritmo
