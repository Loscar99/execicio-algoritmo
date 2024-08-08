algoritmo "Paralelepípedo"
var
   comp, larg, altu, area, diag, volu: real
inicio
      escreval ("Informa as medidas do paralelepípedo: ")
      escreva ("Comprimento: ")
      leia (comp)
      escreva ("largura: ")
      leia (larg)
      escreva ("altura: ")
      leia (altu)
      
      //Calculos
      
      //área total:
      area <- 2*((comp*larg) + (comp*altu) + (larg*altu))
      
      //volume:
      volu <- comp*larg*altu
      
      //diagonal
      diag <- RaizQ(comp^2 + larg^2 + altu^2)
      
      //FimCalculos
      
      escreval ("As medidas desse paralelepípedo são: ")
      escreval ("Área total: ", area)
      escreval ("Volume: ", volu)
      escreval ("diagonal: ", diag)
fimalgoritmo
