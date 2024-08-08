algoritmo "matrizTipos"
var
   m: vetor[1..4, 1..4] de inteiro
   res, i, j: inteiro
procedimento valorMatriz()
var
   i, j: inteiro
inicio
      EscrevaL (" VALORES DA MATRIZ ")
      EscrevaL ("-------------------")
      Para i <- 1 ate 4 faca
           Para j <- 1 ate 4 faca
                Escreva("Digite o valor para a posição [", i, ",", j, "]: ")
                Leia(m[i,j])
           FimPara
      FimPara
fimprocedimento
funcao opcaoMatriz():inteiro
var r: inteiro
inicio
      EscrevaL()
      EscrevaL("MENU DE OPÇÕES")
      EscrevaL("=======================")
      EscrevaL("[1] Mostrar a Matriz")
      EscrevaL("[2] Diagonal Principal")
      EscrevaL("[3] Triângulo Superior")
      EscrevaL("[4] Triângulo Inferior")
      EscrevaL("[5] Sair")
      EscrevaL("-----------------------")
      Escreva("Resposta: ")
      Leia(r)
      Retorne r
      LimpaTela
fimfuncao
inicio
      valorMatriz()
      LimpaTela
      Repita
            res <- opcaoMatriz()
            Escolha res
                    caso 1
                         Para i <- 1 ate 4 faca
                              Para j <- 1 ate 4 faca
                                   Escreva(m[i,j]:4)
                              FimPara
                              EscrevaL()
                         FimPara
                    caso 2
                          Para i <- 1 ate 4 faca
                              Para j <- 1 ate 4 faca
                                   Se (i <> j) entao
                                      Escreva("":4)
                                   senao
                                        Escreva(m[i,j]:4)
                                   FimSe
                              FimPara
                              EscrevaL()
                         FimPara
                    caso 3
                         Para i <- 1 ate 4 faca
                              Para j <- 1 ate 4 faca
                                   Se (i >= j) entao
                                      Escreva("":4)
                                   senao
                                        Escreva(m[i,j]:4)
                                   FimSe
                              FimPara
                              EscrevaL()
                         FimPara
                    caso 4
                          Para i <- 1 ate 4 faca
                              Para j <- 1 ate 4 faca
                                   Se (i <= j) entao
                                      Escreva("":4)
                                   senao
                                        Escreva(m[i,j]:4)
                                   FimSe
                              FimPara
                              EscrevaL()
                         FimPara
                    caso 5
                         EscrevaL("ENCERRANDO...")
                    outrocaso
                             EscrevaL("Opção não encontrada!")
                             EscrevaL("Por favor, verifique sua resposta")
            FimEscolha
      Ate (res = 5)
fimalgoritmo
