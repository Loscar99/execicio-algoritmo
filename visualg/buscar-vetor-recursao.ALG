algoritmo "buscar-vetor-recurs�o"
var
   v: vetor[1..100] de inteiro
   num, posi, i: inteiro
   tem: logico  //indica se tem ou n�o um determinado n�mero no vetor
   
procedimento lerVetor(var c: inteiro)
inicio
      para c de 1 ate 100 faca
           leia(v[c])
      fimpara
fimprocedimento

funcao buscarVetor(n, c: inteiro): inteiro
inicio
      //caso pecorra todo o vetor e n�o encontre um n�mero igula, entao:
      se (c < 1) entao
         tem <- falso
         retorne c
      senao
           //verifica se a posi��o c do vetor � igual a n. Se for, ele retorna a posi��o. Sen�o, ele far� a chamada recursiva para verificar outra posi��o
           se (v[c] = n) entao
              tem <- verdadeiro
              retorne c
           senao
                retorne buscarVetor(n, c - 1)
           fimse
      fimse
fimfuncao

inicio
      //O procedimento lerVetor vai levar o parametro i como refer�ncia poi o i ser� usado como parametro na funcao buscarVetor logo abaixo.
      lerVetor(i)
      
      limpatela
      
      escreva("Digite um n�mero qualquer: ")
      leia(num)
      posi <- buscarVetor(num, i)
      
      //se o n�mero n�o estiver no vetor, ter� um resposta, senao,  ter� outra.
      se (tem = falso) entao
         escreval("O n�mero ", num, " n�o se encontra no vetor. ")
      senao
           escreval("O n�mero ", num, " se encontra na posi��o ", posi, " do vetor. ")
      fimse
fimalgoritmo