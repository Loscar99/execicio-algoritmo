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
      ate (c >(x/2)) e (c >(y/2)) // enquato for c for menor que x ou y ele vai repetir, por�m, quando ela se maior vai encerrar a repeti��o pois n�o teria como ter algum n�mero que fosse divisivel, j� que ele � maior
      
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
            escrevaL("Digite dois n�mero qualquer: ")
            leia(a)
            leia(b)
      ate (a > 0) e (b > 0)
      
      mdc <- valoresMDC(a, b)
      
      mmc <- valoresMMC(a, b)
      
      escreval("--------------------------")
      escreval()

      escreval("O MDC de ", a, " e ", b, " �: ", mdc)
      escreval("J� o MMC �: ", mmc)
fimalgoritmo