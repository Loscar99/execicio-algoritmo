algoritmo "preco-apartamento"
var
   preco: vetor[1..5, 1..5] de real // Matriz que armazena os pre�os dos apartamentos
   metragem: vetor[1..5] de real // Vetor que armazena as metragens dos apartamentos
   bairro: vetor[1..5] de caracter // Vetor que armazena os nomes dos bairros
   pos_apar_caro: vetor[1..2] de inteiro // Posi��o do apartemento mais caro (indice 1 = linha, 2 = coluna)
   pos_minimax: vetor[1..2] de inteiro // Posi��o do apartamento mais barato no bairro que tem o partamento mais caro)

   // Procedimento para ler as metragens dos apartamentos
procedimento lerMetragem()
var c: inteiro
inicio
   escreval("Metragem (m^2): ") // Mensagem para o usu�rio informar as metragens
   para c de 1 ate 5 faca
      leia(metragem[c]) // Leitura das metragens
   fimpara
fimprocedimento

// Procedimento para ler os nomes dos bairros
procedimento lerBairro()
var c: inteiro
inicio
   escreval("Bairros: ") // Mensagem para o usu�rio informar os bairros
   para c de 1 ate 5 faca
      leia(bairro[c]) // Leitura dos nomes dos bairros
   fimpara
fimprocedimento

// Procedimento para ler os pre�os dos apartamentos
procedimento lerPreco()
var i, j: inteiro
inicio
   para i de 1 ate 5 faca
      escreval("Para o Bairro: ", bairro[i]) // Mensagem informando o bairro atual
      para j de 1 ate 5 faca
         escreva(metragem[j], " m^2: ") // Mensagem solicitando o pre�o para a metragem atual
         leia(preco[i, j]) // Leitura do pre�o do apartamento
      fimpara
      escreval() // Adiciona uma linha em branco para melhor visualiza��o
   fimpara
fimprocedimento

// Procedimento para mostrar a matriz de pre�os e as informa��es relacionadas
procedimento mostrarMatriz()
var i, j: inteiro
inicio
   escreval("-------------------------------------------------")
   escreva("Metros(m^2): |") // Cabe�alho para as colunas de metragem
   para j de 1 ate 5 faca
      escreva(metragem[j]:5, " |") // Exibi��o das metragens com formata��o
   fimpara
   escreval()
   escreval("-------------------------------------------------")

   para i de 1 ate 5 faca
      escreva(bairro[i]:13, "|") // Exibi��o do nome do bairro
      para j de 1 ate 5 faca
         escreva(preco[i, j]:5, " |") // Exibi��o dos pre�os dos apartamentos
      fimpara
      escreval() // Adiciona uma linha em branco ap�s cada linha de pre�os
   fimpara
   escreval("-------------------------------------------------")
fimprocedimento

funcao maiorPreco(): real
var
   i, j: inteiro
   maior_preco: real
inicio
   para i de 1 ate 5 faca
      para j de 1 ate 5 faca
         se (i = 1) e (j = 1) entao
            maior_preco <- preco[i,j]
            pos_apar_caro[1] <- i
            pos_apar_caro[2] <- j
         senao
            se (maior_preco < preco[i,j]) entao
               maior_preco <- preco[i,j])
               pos_apar_caro[1] <- i
               pos_apar_caro[2] <- j
            fimse
         fimse

      fimpara
   fimpara
   retorne maior_preco
fimfuncao

funcao minimaxPreco(): real
var
   j: inteiro
   valor_minimax: real
inicio
   para j de 1 ate 5 faca
      se (j = 1) entao
         valor_minimax <- preco[pos_apar_caro[1], j]
         pos_minimax[1] <- pos_apar_caro[1]
         pos_minimax[2] <- j
      senao
         se (valor_minimax > preco[pos_apar_caro[1],j]) entao
            valor_minimax <- preco[pos_apar_caro[1],j]
            pos_minimax[1] <- pos_apar_caro[1]
            pos_minimax[2] <- j
         fimse
      fimse
   fimpara
   retorne valor_minimax
fimfuncao

procedimento aumentoMatriz()
var i, j: inteiro
inicio
   para i de 1 ate 5 faca
      para j de 1 ate 5 faca
         se (preco[i,j] < 250) entao
            preco[i,j] <- preco[i,j] * 1.05
         fimse
      fimpara
   fimpara
fimprocedimento

inicio
   escreval("Registre as Metragens dos apartamentos: ")
   lerMetragem() // Chama o procedimento para ler as metragens

   limpatela

   escreval("Registre os Bairros da cidade: ")
   lerBairro() // Chama o procedimento para ler os bairros

   limpatela

   escreval("Informe os Pre�os:")
   lerPreco() // Chama o procedimento para ler os pre�os

   limpatela

   escreval("Tabela com os Dados: *Pre�os expressos em Mil Reais ")
   mostrarMatriz() // Chama o procedimento para mostrar a matriz com os dados
   escreval()

   //Mostra o Apartamento mais caro e sua metragem
   escreval("O apartamento MAIS CARO custa: R$", maiorPreco(), ".000")
   escreval("No bairro: ", bairro[pos_apar_caro[1]])
   escreval("Com ", metragem[pos_apar_caro[2]], " metros quadrados." )
   escreval()

   //Mostra o Apartamento mais barato no bairro mais caro
   escreval("J� o apartamento mais barato nesse mesmo bairro, ",  bairro[pos_apar_caro[1]], ", custa: R$", minimaxPreco(), ".000") //minimax � o menor valor na linha onde se encontra o maior valor
   escreval("Com ", metragem[pos_minimax[2]], " metros quadrados")
   escreval()

   //Dar um almento de 5% a todos os apartamentos que custam menos de R$250.000
   escreval("Aumento de 5% aos apartamentos abaixo de R$ 250.000:")
   aumentoMatriz()
   mostrarMatriz()
fimalgoritmo
