algoritmo "semnome"
var
   m: vetor[1..6, 1..6] de inteiro
   i, j, l, c, max, soma, maxd, maxe, maxs, maxi, min: inteiro
   
inicio
      para i de 1 ate 6 faca
           para j de 1 ate 6 faca
                leia(m[i,j])
           fimpara
      fimpara
      
      limpaTela
      
      //escreve a matriz
      soma <- 0
      escreval("MATRIZ 6x6: ")
      escreval()
      para i de 1 ate 6 faca
           escreva("|")
           para j de 1 ate 6 faca
                escreva(m[i,j]:4)
                soma <- soma + m[i,j]
           fimpara
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //Só o lado direito acima da diagonal principal da matriz
      soma <- 0
      para i de 1 ate 6 faca
           escreva("|")
           para j de 1 ate 6 faca
                se (i < j) entao
                   escreva(m[i,j]:4)
                   soma <- soma + m[i,j]
                senao
                     escreva("  --":4)
                fimse
           fimpara
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //lado esquerdo acima da diagonal secundaria
      //atribuições de variáveis
      soma <- 0
      l <- 0
      max <- 5  //é usado para definir o máximo de culunas que vai ser amostrado
      
      para i de 1 ate 6 faca  //estrutura de repetição para as linhas
           se (l <= 5) entao  //variável que definirá as linhas que serão amostradas(1-5)
              l <- l + 1
           fimse
           escreva("|")
           c <- 0
           para j de 1 ate 6 faca     //estrutura de repetição para as colunas
                se (c < max) e (l <= 5) entao  //variável que definirá as colunas que serão amostrados
                   c <- c + 1
                   escreva(m[l,c]:4)
                   soma <- soma + m[l,c] //soma dos elementos
                senao
                     escreva("  --":4)
                fimse
           fimpara
           se (max > 1) entao  //a cada linha que almenta, uma coluna diminui
              max <- max - 1
           fimse
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //Lado superior entre as diagonais primaria e secundária
      soma <- 0
      l <- 0
      max <- 5
      
      para i de 1 ate 6 faca
           se (l <= 2) entao
              l <- l + 1
           fimse
           se (l = 1) entao
              c <- 1
           senao
                se (l = 2) entao
                   c <- 2
                fimse
           fimse
           escreva("|")
           para j de 1 ate 6 faca
                se (j > i) e (c < max) e (l <= 2) entao
                   c <- c + 1
                   escreva(m[l,c]:4)
                   soma <- soma + m[l,c]
                senao
                     escreva("  --":4)
                fimse
           fimpara
           escreval("  |")
           se (max >= 4) entao
              max <- max - 1
           fimse
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //lateral direita entre as diagonais princiapal e secundaria
      soma <- 0
      l <- 0
      max <- 0
      
      para i de 1 ate 6 faca
           se (l <= 5) entao
              l <- l + 1
           fimse
           se (l = 2) ou (l = 5) entao
              max <- 1
           senao
                se (l = 3) ou (l = 4) entao
                   max <- 2
                fimse
           fimse
           escreva("|")
           c <- 0
           para j de 1 ate 6 faca
                se (i > j) e (c < max) e (l <= 5) entao
                   c <- c + 1
                   escreva(m[l,c]:4)
                   soma <- soma + m[l,c]
                senao
                     escreva("  --":4)
                fimse
           fimpara
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //lado direito e esquerdo entre as diagonais principal e secundaria
      soma <- 0
      l <- 0

      para i de 1 ate 6 faca
              l <- l + 1
           se (l = 2) ou (l = 5) entao
              maxd <- 1
              maxe <- 6
           senao
                se (l = 3) ou (l = 4) entao
                   maxd <- 2
                   maxe <- 5
                fimse
           fimse
           escreva("|")
           c <- 0
           para j de 1 ate 6 faca
                se ((i > j) e (c < maxd) e (l <= 5)) ou ((j > i) e ((c = maxe - 1) ou (c = maxe)) e (l <= 5)) entao
                   c <- c + 1
                   escreva(m[l,c]:4)
                   soma <- soma + m[l,c]
                senao
                     c <- c + 1
                     escreva("  --":4)
                fimse
           fimpara
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //Lado superior e inferior entre as diagonais pricipal e secundária
      soma <- 0
      l <- 0
      maxs <- 6  // maximo de colunas superior
      maxi <- 3  // maximo de coluna inferior

      para i de 1 ate 6 faca
           se (i = 1) ou (i = 2) entao
              maxs <- maxs - 1
           senao
                se (i = 5) ou (i = 6) entao
                   maxi <- maxi + 1
                fimse
           fimse
           
           se (i = 1) ou (i = 6) entao
              min <- 1
           senao
                se (i = 2) ou (i = 5) entao
                   min <- 2
                fimse
           fimse
           
           c <- 1
           
           escreva("|")
           
           para j de 1 ate 6 faca
                se ((i < 3) e (c > min) e ( c <= maxs)) ou ((i > 4) e (c > min) e (c <= maxi)) entao
                   escreva(m[i,c]:4)
                   c <- c + 1
                   soma <- soma + m[i,c]
                senao
                     c <- c + 1
                     escreva("  --":4)
                fimse
           fimpara
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //lado esquerdo e superior entre as diagonais pricipal e secudária
      soma <- 0
      l <- 0
      max <- 5  //é usado para definir o máximo de culunas que vai ser amostrado

      para i de 1 ate 6 faca  //estrutura de repetição para as linhas
           se (l <= 5) entao  //variável que definirá as linhas que serão amostradas(1-5)
              l <- l + 1
           fimse
           escreva("|")
           c <- 0
           para j de 1 ate 6 faca     //estrutura de repetição para as colunas
                se (c < max) e (l <= 5) e (i <> j) entao  //variável que definirá as colunas que serão amostrados
                   c <- c + 1
                   escreva(m[l,c]:4)
                   soma <- soma + m[l,c] //soma dos elementos
                senao
                     c <- c + 1
                     escreva("  --":4)
                fimse
           fimpara
           se (max > 1) entao  //a cada linha que almenta, uma coluna diminui
              max <- max - 1
           fimse
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
      
      //lado esquerdo e inferior entre as diagonais priciapal e secundária
      max <- 0
      l <- 4
      c <- 0
      min <- 2
      soma <- 0
      
      para i de 1 ate 6 faca
           se (max < 5) e (i <> 1) entao
              max <- max + 1
           fimse
           escreva("|")
           c <- 0
           
           para j de 1 ate 6 faca
                se (i = l) e (c = min) entao
                   escreva("  --":4)
                   l <- l + 1
                   min <- min - 1
                   c <- c + 1
                senao
                     se (i > 1) e (c < max) entao
                        c <- c + 1
                        escreva(m[i,c]:4)
                        soma <- soma + m[i,c]
                     senao
                          c <- c + 1
                          escreva("  --":4)
                     fimse
                fimse
           fimpara
           escreval("  |")
      fimpara
      escreval()
      escreval("Soma: ", soma)
      escreval()
fimalgoritmo