algoritmo "semnome"
var
   num, c: inteiro
   nome, sexo: caracter
   altura, peso: real
   // variáveis para os dados estatísticos
   tot_homem, tot_mulher: inteiro
   perc_H, perc_M, tot_peso, peso_medio: real
   mais_alto: caracter
   maior_altura, mais_pesado: real
   dif_peso: logico
   
procedimento coletaDados()
inicio
      // total de homens e mulheres
      se (maiusc(sexo) = "M") entao
         tot_homem <- tot_homem + 1
      senao
           tot_mulher <- tot_mulher + 1
      fimse
      
      //Peso total
      tot_peso <- tot_peso + peso
      
      //pessoa mais alta
      dif_peso <- falso
      se (altura > maior_altura) entao
         maior_altura <- altura
         mais_alto <- nome
         mais_pesado <- peso //não é necessáriamente o mais pesado, porém esse dado será usado como fator de desempate caso tenham pessoas com a mesma altura
      senao
           se (altura = maior_altura) entao
              dif_peso <- verdadeiro
              se (peso > mais_pesado) entao
                 mais_pesado <- peso
                 mais_alto <- nome
              fimse
           fimse
      fimse
fimprocedimento

procedimento exibirDados()
inicio
      escreval(" Dados Estatísticos ")
      escreval("---------------------")
      escreval()
      escreval("Total de participantes: ", tot_homem + tot_mulher)
      escreval("Percentual de Homens: ", perc_h, "% ")
      escreval("Percentual de Mulheres: ", perc_m, "% ")
      escreval("Média de peso: ", peso_medio, " kg")
      se (dif_peso = verdadeiro) entao
         escreval()
         escreval("(Uma ou mais pessoas tiveram a mesma altura,")
         escreval("Por isso, a pessoa mais pesada foi considerada a maior.)")
         escreval()
         escreval("Pessoa mais alta: ", mais_alto, " - ", maior_altura, " m")
      senao
           escreval("Pessoa mais alta: ", mais_alto, " - ", maior_altura, " m")
      fimse
fimprocedimento

inicio
      escreval("Quantas pessoas participarão da pesquisa? ")
      escreva("Número: ")
      leia(num)
      
      para c de 1 ate num faca
           limpatela
           
           escreval(c, "º Participante: ")
           escreval()
           escreva("Nome: ")
           leia(nome)
           repita
                 escreva("Altura: ")
                 leia(altura)
                 se (altura >= 3) entao
                    escreval("Valor absurdo!")
                    escreval("Por favor, verifique sua resposta")
                    escreval("E tente novamente.")
                 fimse
           ate(altura < 3)
           escreva("Peso: ")
           leia(peso)
           repita
                 escreva("Sexo [F/M]: ")
                 leia(sexo)
                 se (maiusc(sexo) <> "F") e (maiusc(sexo) <> "M") entao
                    escreval("Resposta invalida. ")
                    escreval("Verifique a resposta e tente novamente.")
                 fimse
           ate (maiusc(sexo) = "F") ou (maiusc(sexo) = "M")
           
           coletaDados()
      fimpara
      
      // Dados estatísticos
      
      perc_H <- (tot_homem * 100) / (tot_homem + tot_mulher) // porcentagem de homem
      perc_M <- 100 - perc_H  // porcentagem de mulher
      
      peso_medio <- tot_peso/(tot_homem + tot_mulher)  // peso médio
      
      limpatela
      
      exibirDados()
      
fimalgoritmo