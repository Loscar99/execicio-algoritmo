algoritmo "declara��o"
var
   resp: inteiro
   local, data, nome: caracter
inicio
      escreval ("Qual o seu nome? ")
      leia (nome)
      escreval ("Oi ", nome, ", tem uma coisa que eu queria dizer mas estou sem geito de falar...")
      escreval ("O que tu acha, eu falo ou deixo pra l�? ")
      escreval ("Resposta: [1] falar, [2] n�o falar: ")
      leia (resp)
      se (resp = 1) entao
         escreval ("Antes de falar, eu preciso saber se voc� tem namorado ou se voc� j� ta gostando de algu�m? ")
         escreval ("Resposta: [1] n�o tenho namorado ou algu�m que eu esteja gostando; " )
         escreval ("[2] sim, tenho namorado ou algu�m que gosto." )
         leia (resp)
         se (resp = 1) entao
              escreval ("A verdade � que faz um tempinho que voc� n�o sai da minha cabe�a...")
              escreval ("Fiquei muito interessado em ti.")
              escreval ("Acho que estou gostando de voc�.")
              escreval ("Eu teria alguma chance com voc�?")
              escreval ("Resposta: [1] sim, [2] n�o")
              leia (resp)
              se (resp = 1) entao
                   escreval ("S�rio!?, isso me deixa muito feliz!")
                   escreval ("Eu gostaria de te conhecer melhor.")
                   escreval ("Ser� que a gente poderia marcar um encomtro para se conhecer melhor?")
                   escreval ("Resposta: [1]Claro [2]Acho que ainda � sedo")
                   leia (resp)
                   se (resp = 1) entao
                        escreval ("Perfeito!, onde a gente poderia se encontrar? ")
                        leia (local)
                        escreval ("Otimo, ", local, " a gente pode se encontrar l�.")
                        escreval ("Qual seria uma dada boa para voc�? ")
                        leia (data)
                        escreval ("Ent�o t� combinado! a gente se encontra em/no/na ", local)
                        escreval ("na data ", data)
                   senao
                       escreval ("Eu entendo, claro, foi tudo muito r�pido.")
                       escreval ("Ent�o a gente pode ir conversando por aqui mesmo,")
                       escreval ("At� voc� se sentir mais a vontade para nos conhecer presencialmente.")
                       escreval ("Pode ser assim? ")
                       escreval ("Resposta: [1]sim [2]n�o")
                       leia (resp)
                       se (resp = 1) entao
                          escreval ("Certo ent�o")
                       senao
                            escreval ("Ent�o se foda!")
                       fimse
                   fimse
              senao
                  escreval ("Entendi, � uma pena. ")
                  escreval ("voc� � a primeira pessoa que despertou isso em mim...")
                  escreval ("Tudo bem, eu n�o vou ficar insistindo, n�o quero ser incovini�nte. ")
                  escreval ("Se voc� quiser, pode disconciderar tudo isso, por favor, n�o deixe que isso afete nossa amizade. ")
                  escreval ("T� bom?")
              fimse
         senao
              escreval ("Ah, ent�o deixa pra l�")
         fimse
      senao
           escreval ("Entendi, �, talvez seja s� besteira minha. ")
      fimse
      
fimalgoritmo
