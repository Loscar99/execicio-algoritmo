algoritmo "Seletor de Pessoas"
var
   resp, rep, sex: caractere
   idade, cabelo, grupoA, grupoB, total, totalH, totalM: inteiro
inicio
      repita
             escreval ("========================")
             escreval ("   SELETOR DE PESSOAS   ")
             escreval ("========================")
             escreva ("Qual o sexo: [M/F] ")
             leia (sex)
             escreva ("Qual a idade? ")
             leia (idade)
             escreval ("Qual a cor do cabelo: ")
             escreval ("------------------------")
             escreval ("[1] Preto")
             escreval ("[2] Castanho")
             escreval ("[3] Loiro")
             escreval ("[4] Ruivo")
             leia (cabelo)
             
             se (sex = "m") e (idade >= 18) e (cabelo = 2) entao
                grupoA <- grupoA + 1
             fimse
             se (sex ="f") e (idade >= 25) e (idade <= 30) e (cabelo = 3) entao
                grupoB <- grupoB + 1
             fimse
             se (sex = "m") entao
                totalH <- totalH + 1
             fimse
             se (sex = "f") entao
                totalM <- totalM + 1
             fimse
             
             escreva ("Quer continuar? [s/n] ")
             leia (rep)
      ate (rep = "n")
      escreval ("---------------------------")
      escreval ("      RESULTADO FINAL      ")
      escreval ("---------------------------")
      total <- totalM + totalH
      escreval ("O total de registro forma: ", total)
      escreval ("Os homens representam ", (100*totalH)/total:3:1, "%. ")
      escreval ("As mulheres representam ", (100*totalM)/total:3:1, "%. ")
      escreval ("Total de Homens com ou mais de 18 anos e cabelo castanho: ", grupoA)
      escreval ("Total de Mulheres entre 25 e 30 anos e cabelos loiros: ", grupoB)
fimalgoritmo