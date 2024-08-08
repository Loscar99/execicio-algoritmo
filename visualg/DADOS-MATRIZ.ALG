algoritmo "dados-matriz"
var
   m: vetor[1..5, 1..5] de inteiro
   i, j: inteiro
   soma_L4, soma_C2, soma_DP, soma_DS, soma_TM: inteiro
   
inicio
      //ler a matriz
      para i de 1 ate 5 faca
           para j de 1 ate 5 faca
                leia(m[i,j])
           fimpara
      fimpara
      
      limpatela
      
      //soma da linha 4
      para j de 1 ate 5 faca
           soma_L4 <- soma_L4 + m[4,j]
      fimpara
      
      //soma da coluna 2
      para i de 1 ate 5 faca
           soma_C2 <- soma_C2 + m[i,2]
      fimpara
      
      //soma da diagonal princiapal
      j <- 0
      para i de 1 ate 5 faca
            j <- j + 1
            soma_DP <- soma_DP + m[i,j]
      fimpara
      
      //soma da diagonal secundária
      j <- 5
      para i de 1 ate 5 faca
           soma_DS <- soma_DS + m[i,j]
           j <- j - 1
      fimpara
      
      //soma de todos os elementos da matriz
      para i de 1 ate 5 faca
           para j de 1 ate 5 faca
                soma_TM <- soma_TM + m[i,j]
           fimpara
      fimpara
      
      //escreve a matriz
      escreval("M A T R I Z : ")
      escreval()
      para i de 1 ate 5 faca
           escreva("|")
           para j de 1 ate 5 faca
                escreva(m[i,j]:5)
           fimpara
           escreval("   |")
      fimpara
      escreval()
      
      escreval("Dados: ")
      escreval("a) Soma da Linha 4 de M: ", soma_L4)
      escreval("b) Soma da Coluna 2 de M: ", soma_C2)
      escreval("c) Soma da Diagonal Principal de M: ", soma_DP)
      escreval("d) Soma da Diagonal Secundaria de M: ", soma_DS)
      escreval("e) Soma de Todos os Elementos de M: ", soma_TM)
fimalgoritmo