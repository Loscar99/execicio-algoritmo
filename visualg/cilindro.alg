algoritmo "semnome"
var
   raio, altu: real
   a_late, a_tota, a_base, volu: real
inicio
      escreval ("Informe as seguintes medidas do cilindro: ")
      escreva ("Raio: ")
      leia (raio)
      escreva ("Altura: ")
      leia (altu)
      
      //calculos
      
      //�rea da base:
      a_base <- pi*raio^2
      
      //�rea lateral:
      a_late <- 2*pi*raio*altu
      
      //�rea total:
      a_tota <- a_base + a_late
      
      //volume:
      volu <- a_base*altu
      
      //FimCalculo
      
      escreval ("Volume: ", volu)
      escreval ("�rea da base: ", a_base)
      escreval ("�rea lateral: ", a_late)
      escreval ("�rea Total: ", a_tota)
fimalgoritmo
