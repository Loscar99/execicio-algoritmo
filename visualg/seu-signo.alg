algoritmo "seu signo"
var
   mes: caractere
   dia: inteiro
   aries, touro, gemeos, cancer, leao, virgem, libra, escorpiao, sargitario, capricornio, aquario, peixes: logico
inicio
      escreval ("Vamos descobrir qual é o seu signo?")
      escreval ("Let's go!")
      escreva ("Em qual mês você nasceu: ")
      leia (mes)
      escreva ("Qual o dia em que você nasceu: ")
      leia (dia)
      
      //o dia deve estar entre tal dias do mês tal
      //(((dia >= ) e (dia <=)) e ((mes =) ou (mes =) ou (mes =) ou (mes =)))   ou   (((dia >=) e (dia <=)) e ((mes =) ou (mes =) ou (mes =) ou (mes =)))
              
      aries <-  (((dia >= 21) e (dia <= 31)) e ((mes = "mar") ou (mes = "março") ou (mes = "3") ou (mes = "03")))   ou   (((dia >= 1) e (dia <= 20)) e ((mes = "abr") ou (mes = "abril") ou (mes = "4") ou (mes = "04")))
      touro <-  (((dia >= 21) e (dia <= 30)) e ((mes = "abr") ou (mes = "abril") ou (mes = "4") ou (mes = "04")))   ou   (((dia >= 1) e (dia <= 20)) e ((mes = "mai") ou (mes = "maio" ) ou (mes = "5") ou (mes = "05")))
      gemeos <- (((dia >= 21) e (dia <= 31)) e ((mes = "mai") ou (mes = "maio")  ou (mes = "5") ou (mes = "05")))   ou   (((dia >= 1) e (dia <= 20)) e ((mes = "jun") ou (mes = "junho") ou (mes = "6") ou (mes = "06")))
      cancer <- (((dia >= 21) e (dia <= 30)) e ((mes = "jun") ou (mes = "junho") ou (mes = "6") ou (mes = "06")))   ou   (((dia >= 1) e (dia <= 21)) e ((mes = "jul") ou (mes = "julho") ou (mes = "7") ou (mes = "07")))
      leao <-   (((dia >= 22) e (dia <= 31)) e ((mes = "jul") ou (mes = "julho") ou (mes = "7") ou (mes = "07")))   ou   (((dia >= 1) e (dia <= 22)) e ((mes = "ago") ou (mes = "agosto") ou (mes = "8") ou (mes = "08")))
      virgem <- (((dia >= 23) e (dia <= 31)) e ((mes = "ago") ou (mes = "agosto") ou (mes = "8") ou (mes = "08")))   ou   (((dia >= 1) e (dia <= 22)) e ((mes = "set") ou (mes = "setembro") ou (mes = "9") ou (mes = "09")))
      libra <-  (((dia >= 23) e (dia <= 30)) e ((mes = "set") ou (mes = "setembro") ou (mes = "9") ou (mes = "09")))   ou   (((dia >= 1) e (dia <= 22)) e ((mes = "out") ou (mes = "outubro") ou (mes = "10")))
      escorpiao <- (((dia >= 23) e (dia <= 31)) e ((mes = "out") ou (mes = "outubro") ou (mes = "10")))   ou   (((dia >= 1) e (dia <= 21)) e ((mes = "nov") ou (mes = "novembro") ou (mes = "11")))
      sargitario <- (((dia >= 22) e (dia <= 30)) e ((mes = "nov") ou (mes = "novembro") ou (mes = "11")))   ou   (((dia >= 1) e (dia <= 21)) e ((mes = "dez") ou (mes = "dezembro") ou (mes = "12")))
      capricornio <- (((dia >= 22) e (dia <= 31)) e ((mes = "dez") ou (mes = "dezembro") ou (mes = "12")))   ou   (((dia >= 1) e (dia <= 20)) e ((mes =  "jan") ou (mes = "janeiro") ou (mes = "1") ou (mes = "01")))
      aquario <- (((dia >= 21) e (dia <= 31)) e ((mes =  "jan") ou (mes = "janeiro") ou (mes = "1") ou (mes = "01")))   ou   (((dia >= 1) e (dia <= 19)) e ((mes = "fev") ou (mes = "fevereiro") ou (mes = "2") ou (mes = "02")))
      peixes <- (((dia >= 20) e (dia <= 29)) e ((mes = "fev") ou (mes = "fevereiro") ou (mes = "2") ou (mes = "02")))   ou   (((dia >= 1) e (dia <= 20)) e ((mes = "mar") ou (mes = "março") ou (mes = "3") ou (mes = "03")))
      
      escreval ("Áries: ", aries)
      escreval ("Touro: ", touro)
      escreval ("Gêmeos: ", gemeos)
      escreval ("Câncer: ", cancer)
      escreval ("Leão: ", leao)
      escreval ("Virgem: ", virgem)
      escreval ("Libra: ", libra)
      escreval ("Escorpião: ", escorpiao)
      escreval ("Sargitário: ", sargitario)
      escreval ("Capricórnio: ", capricornio)
      escreval ("Aquário: ", aquario)
      escreval ("Peixes: ", peixes)
      
fimalgoritmo
