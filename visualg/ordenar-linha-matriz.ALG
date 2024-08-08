algoritmo "semnome"
var
   A: vetor[1..10, 1..10] de inteiro  //A = 1, B = 2 (Esses valores serão usados para decidir qual matriz (A ou B) será escrita)
   
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
   c: inteiro // coluna de matriz para fazer a comparação (ordenação)
inicio
      //estrutura de repetição para a matriz e a primeira posição que vai ser comparada
      para i de 1 ate 10 faca
           para j de 1 ate 9 faca //a coluna vai só ate a 9 pois a ultima coluna será ocupada pela segunda estrutura de repetição(logo baixo)
                //estrutura de repetição para comparar a segunda posição com a primeira e fazer a ordenação de valores
                para c de (j + 1) ate 10 faca
                     se (A[i,j] > A[i,c]) entao //a segunda posição vai estar na mesma linha, variando apena as colunas
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