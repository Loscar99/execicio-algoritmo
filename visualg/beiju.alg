algoritmo "beiju"
var
   tapBeiju: inteiro
   coco, goma, massa, sal, massaTotal: real
procedimento calculoBeiju()
inicio
      //Quantidade total de massa de beiju:
      massaTotal <- tapBeiju*5.15

      //Quantidade de massa e goma:
      massa <- (massaTotal - coco)/2
      goma <- (massaTotal - coco)/2

      //Quantidade de sal:
      sal <- 0.0061*massaTotal
fimProcedimento
inicio
      escreva ("Quantos tapetes de beiju você deseja? ")
      leia (tapBeiju)
      escreva ("Quantos quilos de coco você tem? ")
      leia (coco)
      
      calculoBeiju()
      
      escreval ("Você vai precissar de: ")
      escreval ("Quantidade total de massa para o beiju: ", massaTotal:1:0, "Kg")
      escreval ("Coco: ", coco:2:2, "Kg")
      escreval ("Massa de mandioca: ", massa:2:2, "Kg")
      escreval ("Goma: ", goma:2:2, "Kg")
      escreval ("Sal: ", sal:1:3, "g")
      
fimalgoritmo
