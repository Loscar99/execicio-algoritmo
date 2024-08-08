algoritmo "buscar-vetor-recursão"
var
   v: vetor[1..100] de inteiro
   num, posi, i: inteiro
   tem: logico  //indica se tem ou não um determinado número no vetor
   
procedimento lerVetor(var c: inteiro)
inicio
      para c de 1 ate 100 faca
           leia(v[c])
      fimpara
fimprocedimento

funcao buscarVetor(n, c: inteiro): inteiro
inicio
      //caso pecorra todo o vetor e não encontre um número igula, entao:
      se (c < 1) entao
         tem <- falso
         retorne c
      senao
           //verifica se a posição c do vetor é igual a n. Se for, ele retorna a posição. Senão, ele fará a chamada recursiva para verificar outra posição
           se (v[c] = n) entao
              tem <- verdadeiro
              retorne c
           senao
                retorne buscarVetor(n, c - 1)
           fimse
      fimse
fimfuncao

inicio
      //O procedimento lerVetor vai levar o parametro i como referência poi o i será usado como parametro na funcao buscarVetor logo abaixo.
      lerVetor(i)
      
      limpatela
      
      escreva("Digite um número qualquer: ")
      leia(num)
      posi <- buscarVetor(num, i)
      
      //se o número não estiver no vetor, terá um resposta, senao,  terá outra.
      se (tem = falso) entao
         escreval("O número ", num, " não se encontra no vetor. ")
      senao
           escreval("O número ", num, " se encontra na posição ", posi, " do vetor. ")
      fimse
fimalgoritmo