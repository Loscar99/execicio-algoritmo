algoritmo "AnalizadorNomes"
var
   nome: caractere
   c: inteiro
inicio
       Escreva ("Informe o seu nome: ")
       leia (nome)
       escreval ("Seu nome tem um total de ", compr(nome), " letras. ")
       escreval ("Seu nome em caixa alta fica dessa forma: ", maiusc(nome))
       escreval ("J� em min�scola  fica assim: ", minusc(nome))
       escreval ("A primeira e �ltima letra do seu nome � respectivamente: ", maiusc(copia(nome, 1, 1)), " e ", maiusc(copia(nome, compr(nome), 1)))
       escreval ("Seu nome tem a letra A na seguinte posi��o: ", pos("A", maiusc(nome)))
       escreval ("O c�digo da primeira letra do seu nome �: ", asc(maiusc(copia(nome, 2, 1))))
       escreval ("A letra de c�digo 65 � : ", carac(65))
       para c <- compr(nome) ate 1 passo -1 faca
            escreva (maiusc (copia (nome, c, 1)))
       fimpara
fimalgoritmo
