algoritmo "semnome"
var
   A: vetor[1..10, 1..10] de inteiro  //A = 1, B = 2 (Esses valores ser�o usados para decidir qual matriz (A ou B) ser� escrita)
   
procedimento lerMatriz()
var i, j: inteiro
inicio
      para i de 1 ate 10 faca
           para j de 1 ate 10 faca
                leia(a[i,j])
           fimpara
      fimpara
fimprocedimento

procedimento escreverMatriz()
var i, j: inteiro
inicio
      para i de 1 ate 10 faca
           escreva("|")
           para j de 1 ate 10 faca
                escreva(A[i,j]:4)
           fimpara
           escreval("  |")
      fimpara
fimprocedimento

procedimento ordenarMatriz()
var
   i, j, aux: inteiro
   c: inteiro // coluna de matriz para fazer a compara��o (ordena��o)
inicio
      //estrutura de repeti��o para a matriz e a primeira posi��o que vai ser comparada
      para i de 1 ate 10 faca
           para j de 1 ate 9 faca //a coluna vai s� ate a 9 pois a ultima coluna ser� ocupada pela segunda estrutura de repeti��o(logo baixo)
                //estrutura de repeti��o para comparar a segunda posi��o com a primeira e fazer a ordena��o de valores
                para c de (j + 1) ate 10 faca
                     se (A[i,j] > A[i,c]) entao //a segunda posi��o vai estar na mesma linha, variando apena as colunas
                        aux <- A[i,j]
                        A[i,j] <- A[i,c]
                        A[i,c] <- aux
                     fimse
                fimpara
           fimpara
      fimpara
fimprocedimento

inicio
      lerMatriz()

      limpatela
      
      escreva("MATRIZ 10X10: ")
      escreval()

      //escreve a matriz
      escreverMatriz()
      escreval()
      
      //ordenar os valores de cada linha da matriz:
      ordenarMatriz()
      
      escreval("Matriz com as linhas ordenadas:")
      escreval()
      escreverMatriz()

fimalgoritmo