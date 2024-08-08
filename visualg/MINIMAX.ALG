algoritmo "minimax"
var
   m: vetor[1..10, 1..10] de inteiro
   minimax_pos: vetor[1..2] de inteiro
   maior_ele, minimax, lin_maior_ele: inteiro
   
procedimento lerMatriz()
var l, c: inteiro
inicio
      para l de 1 ate 10 faca
           para c de 1 ate 10 faca
                leia(m[l,c])
           fimpara
      fimpara
fimprocedimento

procedimento escreverMatriz()
var l, c: inteiro
inicio
      para l de 1 ate 10 faca
           escreva("|")
           para c de 1 ate 10 faca
                escreva(m[l,c]:4)
           fimpara
           escreval("  |")
      fimpara
fimprocedimento

procedimento elementoMinimax()
var
   l, c: inteiro
inicio
       // descobir a linha do maior elemento
      para l de 1 ate 10 faca
           para c de 1 ate 10 faca
                se (l = 1) e (c = 1)  entao //recebe o primeiro elemento
                   maior_ele <- m[l,c]
                   lin_maior_ele <- l
                senao
                     se (maior_ele < m[l,c]) entao  //compara qual elemento é maior e efetua a troca
                        maior_ele <- m[l,c]
                        lin_maior_ele <- l
                     fimse
                fimse
           fimpara
      fimpara
      
      //posição do elemento minimax
      para c de 1 ate 10 faca
           se (c = 1) entao
              minimax_pos[1] <- lin_maior_ele
              minimax_pos[2] <- c
           senao
              se (m[minimax_pos[1],minimax_pos[2]] > m[lin_maior_ele,c]) entao
                 minimax_pos[1] <- lin_maior_ele
                 minimax_pos[2] <- c
                 minimax <- m[minimax_pos[1],minimax_pos[2]]
              fimse
           fimse
      fimpara
fimprocedimento

inicio
       lerMatriz()

       limpatela
       
       elementoMinimax()
       
       escreval("M A T R I Z   1 0 X 1 0 : ")
       escreval()
       escreverMatriz()
       escreval()
       escreval("O elemento Minimax da matriz")
       escreval("(o menor elemento da linha em que se encontra o maior elemento da matriz)")
       escreval("O maior elemento da matriz é o ", maior_ele, " na linha ", lin_maior_ele)
       escreval("E o menor elemento desse linha é o ", minimax, " na posição A", minimax_pos[1]:1, ",", minimax_pos[2]:1)

fimalgoritmo