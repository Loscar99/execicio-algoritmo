algoritmo "MMC-MDC"
var
   a, b: inteiro
   mdc, mmc: inteiro
   
funcao valoresMDC(x, y: real): inteiro
var
   max, c, max_dc: inteiro

inicio
      max_dc <- 1
      
      repita
            c <- c + 1
            enquanto (x % c = 0) e (y % c = 0) faca
                 x <- x / c
                 y <- y / c
                 max_dc <- max_dc * c
                 se (c = 1) entao
                    interrompa
                 fimse
            fimenquanto
      ate (c >(x/2)) e (c >(y/2)) // enquato for c for menor que x ou y ele vai repetir, porém, quando ela se maior vai encerrar a repetição pois não teria como ter algum número que fosse divisivel, já que ele é maior
      
      retorne max_dc
fimfuncao

funcao valoresMMC(x, y: real): inteiro
var c, min_mc: inteiro
inicio
      min_mc <- 1
      
      repita
            c <- c + 1
            enquanto (x % c = 0) ou (y % c = 0) faca
                     se (x % c = 0) entao
                        x <- x / c
                     fimse
                     se (y % c = 0) entao
                        y <- y / c
                     fimse
                     min_mc <- min_mc * c
                     se (c = 1) entao
                        interrompa
                     fimse
            fimenquanto
      ate (c > x) e (c > y)
      retorne min_mc
fimfuncao

inicio
      repita
            escrevaL("Digite dois número qualquer: ")
            leia(a)
            leia(b)
      ate (a > 0) e (b > 0)
      
      mdc <- valoresMDC(a, b)
      
      mmc <- valoresMMC(a, b)
      
      escreval("--------------------------")
      escreval()

      escreval("O MDC de ", a, " e ", b, " é: ", mdc)
      escreval("Já o MMC é: ", mmc)
fimalgoritmo