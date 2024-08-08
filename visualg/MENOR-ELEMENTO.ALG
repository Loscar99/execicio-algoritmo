algoritmo "menor-elemento"
var
   n: vetor[1..80] de inteiro
   menor_elem, posi, c: inteiro
inicio

      para c de 1 ate 80 faca
           leia(n[c])
           se (c = 1) entao
              menor_elem <- n[c]
           senao
                se (menor_elem > n[c]) entao
                   menor_elem <- n[c]
                   posi <- c
                fimse
           fimse
      fimpara
      
      limpatela
      
      escreval("O menor elemento de N é = ", menor_elem, " e sua posição é ", posi)
fimalgoritmo