algoritmo "Tri�ngulo"
var
   L1, L2, L3: real
   Eq, Is, Es, Tri: logico
inicio
      escreva ("Informe o tamanho do primeiro lado do tri�nguro: ")
      leia (L1)
      escreva ("Segundo lado do tri�ngulo: ")
      leia (L2)
      escreva ("Terceiro lado do tri�ngulo: ")
      leia (l3)
      
      Tri <- (L1 + L2 > L3) e (L1 + L3 > L2) e (L2 + L3 > L1)
      Eq <- (L1 = L2) e (L2 = L3)
      Is <- ((L1 = L2) e (L1 <> l3)) ou ((L1 = L3) e (L1 <> L2)) ou ((L2 = L3) e (L2 <> L1))
      Es <- (L1 <> L2) e (L2 <> L3) e (L3 <> L1)
      
      escreval ("� um tri�ngulo: ", Tri)
      escreval ("� Equil�tero: ", Eq)
      escreval ("� Is�sceles: ", Is)
      escreval ("� Escaleno: ", Es)

fimalgoritmo
