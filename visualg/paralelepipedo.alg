algoritmo "Paralelep�pedo"
var
   comp, larg, altu, area, diag, volu: real
inicio
      escreval ("Informa as medidas do paralelep�pedo: ")
      escreva ("Comprimento: ")
      leia (comp)
      escreva ("largura: ")
      leia (larg)
      escreva ("altura: ")
      leia (altu)
      
      //Calculos
      
      //�rea total:
      area <- 2*((comp*larg) + (comp*altu) + (larg*altu))
      
      //volume:
      volu <- comp*larg*altu
      
      //diagonal
      diag <- RaizQ(comp^2 + larg^2 + altu^2)
      
      //FimCalculos
      
      escreval ("As medidas desse paralelep�pedo s�o: ")
      escreval ("�rea total: ", area)
      escreval ("Volume: ", volu)
      escreval ("diagonal: ", diag)
fimalgoritmo
