algoritmo "pizzaria"
var
   tipo_pizza: inteiro
   sabor_pizza: vetor[1..4] de inteiro //salva os valores correspondentes aos sabores da pizza
   opcao_bebida: vetor[1..2] de inteiro //primeira posição é a categoria de bebida e a segunda o tipo
   quant_bebida: inteiro
   
   //preços - pizza
   preco_pequena, preco_media, preco_grande, preco_familia: real
   //preços - refrigerantes
   preco_coca, preco_guarana, preco_fanta, preco_sprite: real
   //preços - chopps
   preco_choppP, preco_choppM, preco_choppG: real
   //preços - sucos
   preco_suco: real
   //preços - agua
   preco_agua: real
   
   //valor total da conta
   total_conta: real
   
   // banco de dados
   codigo: caracter
   nome: caracter
   preco: real

   //dividir a conta
   soz_acom: inteiro //sozinho ou acompanhado
   quant_pessoas: inteiro
   rachar_conta: caracter
procedimento top() //cabeçalho da estrutura
inicio
   escreval("=======================================")
   escreval("   P I Z Z A R I A   B O M   G O S T O ")
   escreval("=======================================")
fimprocedimento

procedimento inicializarPrecos() //aqui é atualizado os preços dos produtos
inicio
      //------pizzas--------
      preco_pequena <- 13.0
      preco_media <- 17.0
      preco_grande <- 26.0
      preco_familia <- 33.0
      
      //----refrigerantes------
      preco_coca <- 12.5
      preco_guarana <- 10.0
      preco_fanta <- 8.0
      preco_sprite <- 8.5
      
      //------Chopps---------
      preco_choppP <- 2.0
      preco_choppM <- 4.0
      preco_choppg <- 8.0
      
      //------Sucos--------
      preco_suco <- 2.5
      
      //-------Água--------
      preco_agua <- 2.0
fimprocedimento

procedimento pizzaOpcao() //opções de tamanho de pizzas
var confirm: caracter
inicio
   repita
      escreval(" PIZZAS - OPÇÕES: ")
      escreval("-----------------------------")
      escreval("[1] Pizza Pequena - R$", preco_pequena:6:2)
      escreval("   (4 fatias - até 2 sabores)")
      escreval()
      escreval("[2] Pizza Média - R$", preco_media:6:2)
      escreval("   (6 fatias - até 3 sabores)")
      escreval()
      escreval("[3] Pizza Grande - R$", preco_grande:6:2)
      escreval("   (8 fatias - até 3 sabores)")
      escreval()
      escreval("[4] Pizza Família - R$", preco_familia:6:2)
      escreval("   (10 fatias - até 4 sabores)")
      escreval()
      escreval("[5] Não quero pizza")
      escreval("-----------------------------")
      escreva("Informe a opção que você deseja: ")
      leia(tipo_pizza)
      
      se (tipo_pizza > 5) entao
         limpatela
         top()
         escreval("----------------------------------")
         escreval("Opção não encontrada. ")
         escreval("Por favor, verifique sua resposta")
         escreval("e tente novamente.")
         escreval("----------------------------------")
      fimse

      //Confirmar o pedido
      se (tipo_pizza >=1) e (tipo_pizza <=5) entao
         escolha tipo_pizza
            caso 1
               escreval()
               escreval("Você escolheu uma pizza pequena - R$", preco_pequena:6:2)
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
            caso 2
               escreval()
               escreval("Você escolheu uma Pizza média - R$", preco_media:6:2)
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
            caso 3
               escreval()
               escreval("Você escolheu uma Pizza Grande - R$", preco_grande:6:2)
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
            caso 4
               escreval()
               escreval("Você escolheu uma pizza Família - R$", preco_familia:6:2)
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
            caso 5
               escreval()
               escreval("Você não escolheu nenhuma pizza ")
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
         fimescolha
      fimse
   ate (tipo_pizza >= 1) e (tipo_pizza <= 5) e (confirm = "S")
fimprocedimento

procedimento pizzaCardapio() //opções de sabores
inicio
   escreval("|  Cardápio de Pizzas  |")
   escreval("------------------------")
   escreval("| [1] Frango           |")
   escreval("| [2] Catupiry         |")
   escreval("| [3] Muçarela         |")
   escreval("| [4] Calabresa        |")
   escreval("| [5] Portuguesa       |")
   escreval("| [6] Pepperoni        |")
   escreval("| [7] Napolitana       |")
   escreval("| [8] Modo da Casa     |")
   escreval("------------------------")
fimprocedimento

procedimento pizzaSabores() //opções de sabores
var
   c, max_sabores: inteiro //contador e limite de sabores
   confirm, tam_pizza: caracter
   sabor: vetor[1..8] de caracter
inicio
   escolha tipo_pizza
      caso 1
         tam_pizza <- "Pequena"
         max_sabores <- 2
      caso 2
         tam_pizza <- "Média"
         max_sabores <- 3
      caso 3
         tam_pizza <- "Grande"
         max_sabores <- 3
      caso 4
         tam_pizza <- "Família"
         max_sabores <- 4
   fimescolha

   repita
      para c de 1 ate max_sabores faca
         limpatela
         top()
         pizzaCardapio()
         escreval("Pizza ", tam_pizza, " - Escolha até ", max_sabores, " sabores: ")
         escreva(c, "º sabor: ")
         leia(sabor_pizza[c])
      fimpara

      limpatela
      top()
      escreval(" CONFIRMAR PEDIDO: ")
      escreval("-------------------")
      escreval()
      escreval("Você escolheu uma pizza ", minusc(tam_pizza))
      escreval("com os seguintes sabores: ")

      para c de 1 ate max_sabores faca
         escolha sabor_pizza[c]
            caso 1
                 escreva(" Frango ")
            caso 2
               escreva(" Catupiry ")
            caso 3
               escreva(" Muçarela ")
            caso 4
               escreva(" Calabresa ")
            caso 5
               escreva(" Portuguesa ")
            caso 6
               escreva(" Pepperoni ")
            caso 7
               escreva(" Napolitana ")
            caso 8
               escreva(" Modo da Casa ")
         fimescolha
      fimpara
      escreval()
      escreval()
      escreval("---------------------")
      escreva("Deseja confirmar [s/n]: ")
      leia(confirm)
   ate (confirm = "S")
fimprocedimento

procedimento bebidasOpcao()
var
   confirm: caracter
   nome_bebida: caracter
   preco: real
inicio
      limpatela
      top()
      repita
         escreval("BEBIDAS - OPÇÕES:   ")
         escreval("-------------------------")
         escreval("[1] Refrigerantes ")
         escreval("[2] Chopps ")
         escreval("[3] Sucos ")
         escreval("[4] Água ")
         escreval("[5] Não quero bebida ")
         escreval("-------------------------")
         escreval("Informe a opção que você deseja: ")
         leia(opcao_bebida[1])
         escreval()
         
         se (tipo_pizza > 5) entao
         limpatela
         top()
         escreval("----------------------------------")
         escreval("Opção não encontrada. ")
         escreval("Por favor, verifique sua resposta")
         escreval("e tente novamente.")
         escreval("----------------------------------")
      fimse
         
         //Confirmar o pedido
      se (opcao_bebida[1] >=1) e (opcao_bebida[1] <=5) entao
         escolha opcao_bebida[1]
         
         //-----------------------refrigerantes-----------------------
            caso 1
                 limpatela
                 top()
                 escreval("| REFRIGERANTES - OPÇÕES:":25)
                 escreval("-------------------------------")
                 escreval("| [1] Coca-Cola":20, "R$ ", preco_coca:4:2)
                 escreval("| [2] Guaraná":20, "R$ ", preco_guarana:4:2)
                 escreval("| [3] Fanta":20, "R$ ", preco_fanta:4:2)
                 escreval("| [4] Sprite":20, "R$ ", preco_sprite:4:2)
                 escreval("-------------------------------")
                 escreva("Digite a opção que deseja: ")
                 leia (opcao_bebida[2])
                 
                 escolha opcao_bebida[2]
                     caso 1
                        nome_bebida <- "Coca-Cola"
                        preco <- preco_coca
                     caso 2
                        nome_bebida <- "Guaraná"
                        preco <- preco_guarana
                     caso 3
                        nome_bebida <- "Fanta"
                        preco <- preco_fanta
                     caso 4
                        nome_bebida <- "Sprite"
                        preco <- preco_sprite
                  fimescolha

               escreval()
               escreval("Informe a quantidade que você deseja: ")
               leia(quant_bebida)
               escreval()
               escreval("Você escolheu ", quant_bebida, " ", nome_bebida, " - R$", quant_bebida * preco:6:2)
               escreva("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
               
            // --------------------------- chopps----------------------------
            caso 2
                 limpatela
                 top()
                 escreval("|      CHOPPS   -   OPÇÕES:":30)
                 escreval("----------------------------------------")
                 escreval("| [1] Chopp Pequeno - 200ml":30, "R$ ", preco_choppP:4:2)
                 escreval("| [2] Chopp Médio - 400ml":30, "R$ ", preco_choppM:4:2)
                 escreval("| [3] Chopp Grande - 600ml":30, "R$ ", preco_choppG:4:2)
                 escreval("----------------------------------------")
                 escreva("Digite a opção que deseja: ")
                 leia (opcao_bebida[2])

                 escolha opcao_bebida[2]
                     caso 1
                        nome_bebida <- "Chopp Pequeno"
                        preco <- preco_choppP
                     caso 2
                        nome_bebida <- "Chopp Médio"
                        preco <- preco_choppM
                     caso 3
                        nome_bebida <- "Chopp Grande"
                        preco <- preco_choppG
                  fimescolha

               escreval()
               escreval("Informe a quantidade que você deseja: ")
               leia(quant_bebida)
               escreval()
               escreval("Você escolheu ", quant_bebida, " ", nome_bebida, " - R$", quant_bebida * preco:5:2)
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
               
            // ------------------------- sucos ---------------------------
            caso 3
                 limpatela
                 top()
                 escreval("| REFRIGERANTES - OPÇÕES:":25)
                 escreval("-------------------------------")
                 escreval("| [1] Maracujá":20, "R$ ", preco_suco:4:2)
                 escreval("| [2] Goiaba":20, "R$ ", preco_suco:4:2)
                 escreval("| [3] Laranja":20, "R$ ", preco_suco:4:2)
                 escreval("| [4] Limonada":20, "R$ ", preco_suco:4:2)
                 escreval("-------------------------------")
                 escreva("Digite a opção que deseja: ")
                 leia (opcao_bebida[2])

                 escolha opcao_bebida[2]
                     caso 1
                        nome_bebida <- "Maracujá"
                        preco <- preco_suco
                     caso 2
                        nome_bebida <- "Goiaba"
                        preco <- preco_suco
                     caso 3
                        nome_bebida <- "Laranja"
                        preco <- preco_suco
                     caso 4
                        nome_bebida <- "Limão"
                        preco <- preco_suco
                  fimescolha

               escreval()
               escreval("Informe a quantidade que você deseja: ")
               leia(quant_bebida)
               escreval()
               escreval("Você escolheu ", quant_bebida, " Suco de ", nome_bebida, " - R$", quant_bebida * preco:6:2)
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
               
               
               //----------------------agua--------------------------------
               caso 4
                 limpatela
                 top()
                 escreval("| REFRIGERANTES - OPÇÕES:":25)
                 escreval("-------------------------------")
                 escreval("| [1] Sem gás":20, "R$ ", preco_agua:4:2)
                 escreval("| [2] Com gás":20, "R$ ", preco_agua:4:2)
                 escreval("-------------------------------")
                 escreva("Digite a opção que deseja: ")
                 leia (opcao_bebida[2])

                 escolha opcao_bebida[2]
                     caso 1
                        nome_bebida <- "Água Sem Gás"
                        preco <- preco_agua
                     caso 2
                        nome_bebida <- "Água Com Gás"
                        preco <- preco_agua
                  fimescolha

               escreval()
               escreval("Informe a quantidade que você deseja: ")
               leia(quant_bebida)
               escreval()
               escreval("Você escolheu ", quant_bebida, " garrafa(s) de ", nome_bebida, " - R$", quant_bebida * preco:6:2)
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
               
            //---------------------------sem bebidas----------------------------
            caso 5
               escreval()
               escreval("Você não escolheu nenhuma bebida")
               escreval("Deseja confirmar [S/N]? ")
               leia(confirm)
               se (confirm = "S") entao
                  limpatela
                  top()
                  escreval("------Opção Confirmada!------")
               senao
                  limpatela
                  top()
                  escreval("------Opção Cancelada!------")
                  escreval("----------------------------")
               fimse
         fimescolha
      fimse
      ate(confirm = "S")
fimprocedimento

funcao calculoConta():real
var
   conta_pizza, conta_bebida, conta_final: real
inicio
      //conta da pizza
      escolha tipo_pizza
              caso 1
                   conta_pizza <- preco_pequena
              caso 2
                   conta_pizza <- preco_media
              caso 3
                   conta_pizza <- preco_grande
              caso 4
                   conta_pizza <- preco_familia
              caso 5
                   conta_pizza <- 0.0
      fimescolha
      
      //conta da bebida
      
      escolha opcao_bebida[1]
              caso 1
                  escolha opcao_bebida[2]
                          caso 1
                               conta_bebida <- preco_coca * quant_bebida
                          caso 2
                               conta_bebida <- preco_guarana * quant_bebida
                          caso 3
                               conta_bebida <- preco_fanta * quant_bebida
                          caso 4
                               conta_bebida <- preco_sprite * quant_bebida
                  fimescolha
              caso 2
                   escolha opcao_bebida[2]
                          caso 1
                              conta_bebida <- preco_choppP * quant_bebida
                          caso 2
                               conta_bebida <- preco_choppM * quant_bebida
                          caso 3
                               conta_bebida <- preco_choppG * quant_bebida
                  fimescolha
              caso 3
                   escolha opcao_bebida[2]
                          caso 1
                               conta_bebida <- preco_suco * quant_bebida
                          caso 2
                               conta_bebida <- preco_suco * quant_bebida
                          caso 3
                               conta_bebida <- preco_suco * quant_bebida
                          caso 4
                               conta_bebida <- preco_suco * quant_bebida
                  fimescolha
              caso 4
                   escolha opcao_bebida[2]
                          caso 1
                               conta_bebida <- preco_agua * quant_bebida
                          caso 2
                               conta_bebida <- preco_agua * quant_bebida
                  fimescolha
              caso 5
                   conta_bebida <- 0.0
      fimescolha
      
      conta_final <- conta_pizza + conta_bebida
      
      retorne conta_final

fimfuncao

procedimento bancoDados(pizza, bebida: real)
var
inicio
      // Banco de Dados pora pizza
      escolha pizza
              caso 1
                   codigo <- "0001"
                   nome <- "Pizza Pequena"
                   preco <- preco_pequena
              caso 2
                   codigo <- "0002"
                   nome <- "Pizza Média"
                   preco <- preco_media
              caso 3
                   codigo <- "0003"
                   nome <- "Pizza Grande"
                   preco <- preco_grande
              caso 4
                   codigo <- "0004"
                   nome <- "Pizza Família"
                   preco <- preco_familia
      fimescolha
      
      escolha bebida
              caso 1
                   escolha opcao_bebida[2]
                           caso 1
                               codigo <- "0005"
                               nome <- "Coca-Cola"
                               preco <- preco_coca
                           caso 2
                                codigo <- "0006"
                                nome <- "Guaraná"
                                preco <- preco_guarana
                           caso 3
                                codigo <- "0007"
                                nome <- "Fanta"
                                preco <- preco_fanta
                           caso 4
                                codigo <- "0008"
                                nome <- "Sprite"
                                preco <- preco_sprite
                   fimescolha
              caso 2
                   escolha opcao_bebida[2]
                           caso 1
                                codigo <- "0009"
                                nome <- "Chopp Pequeno"
                                preco <- preco_choppP
                           caso 2
                                codigo <- "0010"
                                nome <- "Chopp Médio"
                                preco <- preco_choppM
                           caso 3
                                codigo <- "0011"
                                nome <- "Chopp Grande"
                                preco <- preco_choppG
                   fimescolha
              caso 3
                   escolha opcao_bebida[2]
                           caso 1
                                codigo <- "0012"
                                nome <- "Suco de Maracujá"
                                preco <- preco_suco
                           caso 2
                                codigo <- "0013"
                                nome <- "Suco de Goiaba"
                                preco <- preco_suco
                           caso 3
                                codigo <- "0014"
                                nome <- "Suco de Laranja"
                                preco <- preco_suco
                           caso 4
                                codigo <- "0015"
                                nome <- "Limonada"
                                preco <- preco_suco
                   fimescolha
              caso 4
                   escolha opcao_bebida[2]
                           caso 1
                                codigo <- "0016"
                                nome <- "Água sem Gás"
                                preco <- preco_agua
                           caso 2
                                codigo <- "0017"
                                nome <- "Água com Gás"
                                preco <- preco_agua
                   fimescolha
      fimescolha
fimprocedimento

inicio
   inicializarPrecos() // inicializa os preços das pizzas
   top() // logo da pizzaria
   pizzaOpcao() // escolher a opcao de pizza

   se (tipo_pizza <> 5) entao
      pizzaSabores()
   fimse
   
   bebidasOpcao()
   
   total_conta <- calculoConta()
   
   //Quantas pessoas vão pagar
   
   limpatela
   top()
   
   escreval("Você está sozinho ou acompanhado?")
   escreval("[1] Sozinho")
   escreval("[2] Acompanhado")
   leia(soz_acom)
   
   se (soz_acom = 2) entao
      escreval("São quantas pessoas?")
      leia(quant_pessoas)
      escreval("Vão rachar a conta? [s/n]")
      leia(rachar_conta)
   fimse
   
   // exibição da conta:
   
   limpatela
   top()
   
   escreval("------------------------------------")
   escreval(" C O N T A : ")
   escreval("------------------------------------")
   escreval("Código":10, "Produto":15, "QTD":5, "Total")
   escreval("------------------------------------")
   escreval()
   bancoDados(tipo_pizza, 0)   //pizza
   se (tipo_pizza <> 5) entao
      escreval(codigo:10, nome:15, " 1":5, preco:3:2)
   fimse
   bancoDados(0, opcao_bebida[1]) // bebida
   se (opcao_bebida[1] <> 5) entao
      escreval(codigo:10, nome:15, quant_bebida, quant_bebida * preco:8:2)
   fimse
   escreval()
   escreval("------------------------------------")
   escreval()
   escreval("Sub Total":30,  total_conta:4:2)
   escreval("Taxa de serviço (10%)":30,  0.1 * total_conta:4:2 )
   escreval()
   escreval("TOTAL A PAGAR:":30, 1.1 * total_conta:4:2)
   escreval()
   
   se (rachar_conta = "s") entao
      escreval("------------RACHAR CONTA------------")
      escreval()
      escreval("Quantidade de pessoas:":30, quant_pessoas)
      escreval("Valor a ser pago por pessoa:":30, (1.1 * total_conta) / quant_pessoas:4:2)
   fimse
   
fimalgoritmo

