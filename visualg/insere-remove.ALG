algoritmo "semnome"
var
    v: vetor[1..5] de inteiro
    resp, valor, posi: inteiro
    
procedimento menu()
inicio
      //Opções
      escreval("       M E N U      ")
      escreval("-----------------------")
      escreval("| 1 - Inserir":22, "|")
      escreval("| 2 - Remover":22, "|")
      escreval("| 3 - Mostrar o Vetor":22, "|")
      escreval("| 4 - Sair":22, "|")
      escreval("-----------------------")
      escreva("Opção: ")
      leia(resp)
fimprocedimento

procedimento insere(v, p: inteiro)
inicio
      v[p] <- v
      limpaTela
      escreval("Inserido com Sucesso")
      escreval()
fimprocedimento

procedimento remove(p: inteiro)
inicio
      v[p] <- 0
      limpatela
      escreval("Removido com Sucesso")
      escreval()
fimprocedimento

procedimento escreve()
var  i: inteiro
inicio
      escreva("Vetor: ")
      para i de 1 ate 5 faca
           escreva(v[i]:3)
      fimpara
      escreval()
      escreval()
fimprocedimento

inicio
      repita
            menu()

            limpatela

            escolha resp
                    caso 1

                         escreval(" ISERIR VALOR ")
                         escreval()
                         escreva("Valor: ")
                         leia(valor)
                         repita
                               escreva("Posição [1-5]: ")
                               leia(posi)
                               se (posi > 5) ou (posi < 1) entao
                                  escreval()
                                  escreval("Posição Invalida!")
                                  escreval()
                               fimse
                         ate (posi <= 5) e (posi >= 1)

                         insere(valor, posi)

                    caso 2
                         escreval(" DELETAR VALOR ")
                         escreval()
                         repita
                                escreva("Posição a ser deletada: ")
                                leia(posi)
                                se (posi > 5) ou (posi < 1) entao
                                  escreval()
                                  escreval("Posição Invalida!")
                                  escreval()
                               fimse
                          ate (posi > 0) e (posi <= 5)
                          
                          remove(posi)

                    caso 3
                         escreval(" MOSTRAR O VETOR ")
                         escreval()

                         escreve()
                    caso 4
                         escreval("Saindo...")
                    outrocaso
                             escreval("Opção Invalida!")
                             escreval()
            fimescolha
            
     ate (resp = 4)
fimalgoritmo