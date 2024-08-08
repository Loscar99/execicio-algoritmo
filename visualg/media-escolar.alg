algoritmo "media escolar"
var
   nota_1, nota_2, nota_3, nota_4, media: real
inicio
      escreval ("-----------------------------")
      escreval (" Escola Machado de Assis ")
      escreval ("-----------------------------")
      escreval ("MEDIA BIMESTRAL")
      escreva ("Primeira nota: ")
      leia (nota_1)
      escreva ("Segunda nota:  ")
      leia (nota_2)
      escreva ("Terceira nota: ")
      leia (nota_3)
      escreva ("Quarta nota: ")
      leia (nota_4)
      
      media <- (nota_1 + nota_2 + nota_3 + nota_4) / 4
      
      escreval ("------------------------------")
      escreval (" MÉDIA: ", media:3:1)

      se (media >= 7) entao
         escreval (" Aluno Aprovado")
      senao
           escreval (" Aluno Reprovado")
      fimse
           
      escreval ("-------------------------------")
fimalgoritmo