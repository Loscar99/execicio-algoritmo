algoritmo "signos-2.0"
var
    mes: caracter
    dia: inteiro
inicio
      escrevaL ("Vamos descobrir qual � o seu signo.")
      escreva ("Qual o m�s que voc� nasceu? ")
      leia (mes)
      escreva ("Qual o dia que voc� nasceu? ")
      leia (dia)

      se (mes = "Jan") ou (mes = "Janeiro") entao
         escolha dia
                 caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                      escreval ("Voc� � um Capric�rniano. ")
                      escreval ("Capricornianos s�o ambiciosos, respons�veis e pr�ticos. Valorizam trabalho �rduo, disciplina e t�m uma abordagem s�ria � vida. S�o pacientes, focados em objetivos de longo prazo e leais nas rela��es. Podem ser reservados e inflex�veis, mas s�o conhecidos por sua perseveran�a e confiabilidade. ")
                 caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                      escreval ("Voc� � um Aquari�no. ")
                      escreval ("Aquarianos s�o independentes, inovadores e humanit�rios, valorizando liberdade e originalidade. S�o curiosos e sociais, por�m podem ser imprevis�veis e distantes emocionalmente. T�m um forte senso de justi�a e se envolvem em causas sociais. ")
                 outrocaso
                          escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
         fimescolha
      senao
           se (mes = "Fev") ou (mes = "Fevereiro") entao
              escolha dia
                      caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18
                           escreval ("Voc� � um Aquari�no. ")
                           escreval ("Aquarianos s�o independentes, inovadores e humanit�rios, valorizando liberdade e originalidade. S�o curiosos e sociais, por�m podem ser imprevis�veis e distantes emocionalmente. T�m um forte senso de justi�a e se envolvem em causas sociais. ")
                      caso 19, 20, 21, 22, 23, 24, 25, 26, 27, 28
                           escreval ("Voc� � Pisciano. ")
                           escreval ("Piscianos s�o emp�ticos, intuitivos e sonhadores, valorizando a sensibilidade e a compaix�o. S�o criativos e art�sticos, mas podem ser vulner�veis emocionalmente. Buscam paz e harmonia, evitando conflitos, e s�o idealistas, buscando um mundo melhor. ")
                      outrocaso
                               escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                      fimescolha
           senao
                se (mes = "Mar") ou (mes = "Mar�o") entao
                   escolha dia
                           caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
                                escreval ("Voc� � um pisciano. ")
                                escreval ("Piscianos s�o emp�ticos, intuitivos e sonhadores, valorizando a sensibilidade e a compaix�o. S�o criativos e art�sticos, mas podem ser vulner�veis emocionalmente. Buscam paz e harmonia, evitando conflitos, e s�o idealistas, buscando um mundo melhor. ")
                           caso 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                escreval ("Voc� � um Ariano. ")
                                escreval ("Arianos s�o energ�ticos, determinados e l�deres naturais, gostando de desafios e sendo pioneiros. S�o corajosos, diretos e valorizam a independ�ncia. Por vezes podem ser impacientes e agressivos. ")
                           outrocaso
                               escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                      fimescolha
                senao
                     se (mes = "Abr") ou (mes = "Abril") entao
                        escolha dia
                                caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                     escreval ("Voc� � um Ariano. ")
                                     escreval ("Arianos s�o energ�ticos, determinados e l�deres naturais, gostando de desafios e sendo pioneiros. S�o corajosos, diretos e valorizam a independ�ncia. Por vezes podem ser impacientes e agressivos. ")
                                caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30
                                     escreval ("Voc� � um Taurino")
                                     escreval ("Taurinos s�o determinados, est�veis e pr�ticos, valorizando seguran�a e estabilidade. S�o pacientes e confi�veis, apreciam prazeres sensoriais e s�o conhecidos por sua teimosia. Nas rela��es, s�o carinhosos, leais e valorizam a harmonia. ")
                                outrocaso
                                         escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                        fimescolha
                     senao
                          se (mes = "Mai") ou (mes = "Maio") entao
                             escolha dia
                                     caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                          escreval ("Voc� � um Taurino")
                                          escreval ("Taurinos s�o determinados, est�veis e pr�ticos, valorizando seguran�a e estabilidade. S�o pacientes e confi�veis, apreciam prazeres sensoriais e s�o conhecidos por sua teimosia. Nas rela��es, s�o carinhosos, leais e valorizam a harmonia. ")
                                     caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                          escreval ("Voc� � um Geminiano")
                                          escreval ("Geminianos s�o vers�teis, curiosos e comunicativos, gostando de interagir e trocar ideias. S�o adapt�veis e buscam constantemente novas experi�ncias, mas podem ser superficiais ou inconstantes. Valorizam a liberdade e a variedade na vida. ")
                                     outrocaso
                                         escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                     fimescolha
                          senao
                               se (mes = "Jun") ou (mes = "Junho") entao
                                  escolha dia
                                          caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                                escreval ("Voc� � um Geminiano")
                                                escreval ("Geminianos s�o vers�teis, curiosos e comunicativos, gostando de interagir e trocar ideias. S�o adapt�veis e buscam constantemente novas experi�ncias, mas podem ser superficiais ou inconstantes. Valorizam a liberdade e a variedade na vida. ")
                                          caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30
                                               escreval ("Voc� � um Canceriano")
                                               escreval ("Cancerianos s�o sens�veis, intuitivos e protetores, valorizando as rela��es familiares e emocionais. S�o receptivos �s emo��es dos outros e cuidadosos, buscando seguran�a e estabilidade emocional. ")
                                          outrocaso
                                                   escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                  fimescolha
                               senao
                                    se (mes = "Jul") ou (mes = "Julho") entao
                                       escolha dia
                                               caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                                    escreval ("Voc� � um Canceriano")
                                                    escreval ("Cancerianos s�o sens�veis, intuitivos e protetores, valorizando as rela��es familiares e emocionais. S�o receptivos �s emo��es dos outros e cuidadosos, buscando seguran�a e estabilidade emocional. ")
                                               caso 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                    escreval ("Voc� � um Leonino")
                                                    escreval ("Leoninos s�o generosos, autoconfiantes e l�deres naturais, gostando de ser o centro das aten��es. S�o carism�ticos e t�m grande presen�a, por�m podem ser arrogantes. Valorizam a lealdade, a integridade e desejam deixar sua marca no mundo. ")
                                               outrocaso
                                                   escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                       fimescolha
                                    senao
                                         se (mes = "Ago") ou (mes = "Agosto") entao
                                            escolha dia
                                                    caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
                                                         escreval ("Voc� � um Leonino")
                                                         escreval ("Leoninos s�o generosos, autoconfiantes e l�deres naturais, gostando de ser o centro das aten��es. S�o carism�ticos e t�m grande presen�a, por�m podem ser arrogantes. Valorizam a lealdade, a integridade e desejam deixar sua marca no mundo. ")
                                                    caso 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                         escreval ("Voc� � um Virginiano")
                                                         escreval ("Virginianos s�o detalhistas, organizados e pr�ticos, buscando sempre a efici�ncia e a melhoria constante. S�o respons�veis, confi�veis e dedicados, mas podem ser cr�ticos. Valorizam a simplicidade e a funcionalidade em tudo o que fazem. ")
                                                    outrocaso
                                                             escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                            fimescolha
                                         senao
                                              se (mes = "Set") ou (mes = "Setembro") entao
                                                 escolha dia
                                                         caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
                                                              escreval ("Voc� � um Virginiano")
                                                              escreval ("Virginianos s�o detalhistas, organizados e pr�ticos, buscando sempre a efici�ncia e a melhoria constante. S�o respons�veis, confi�veis e dedicados, mas podem ser cr�ticos. Valorizam a simplicidade e a funcionalidade em tudo o que fazem. ")
                                                         caso 23, 24, 25, 26, 27, 28, 29, 30
                                                              escreval ("Voc� � um Libriano")
                                                              escreval ("Librianos s�o diplom�ticos, charmosos e buscam equil�brio e harmonia. S�o soci�veis, justos e valorizam rela��es pessoais. Podem ser indecisos e evitar confrontos. Valorizam a beleza e buscam ambientes agrad�veis em suas vidas. ")
                                                         outrocaso
                                                             escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                                 fimescolha
                                              senao
                                                   se ( mes = "Out") ou (mes = "Outubro") entao
                                                      escolha dia
                                                              caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
                                                                   escreval ("Voc� � um Libriano")
                                                                   escreval ("Librianos s�o diplom�ticos, charmosos e buscam equil�brio e harmonia. S�o soci�veis, justos e valorizam rela��es pessoais. Podem ser indecisos e evitar confrontos. Valorizam a beleza e buscam ambientes agrad�veis em suas vidas. ")
                                                              caso 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                                   escreval ("Voc� � um Escorpiano")
                                                                   escreval ("Escorpianos s�o intensos, determinados e misteriosos, buscando sempre a verdade e a profundidade emocional. S�o leais e comprometidos, por�m podem ser desconfiados e ciumentos. Valorizam a autenticidade e a conex�o verdadeira em seus relacionamentos. ")
                                                              outrocaso
                                                                       escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                                      fimescolha
                                                   senao
                                                        se (mes = "Nov") ou (mes = "Novembro") entao
                                                           escolha dia
                                                                   caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
                                                                        escreval ("Voc� � um Escorpiano")
                                                                        escreval ("Escorpianos s�o intensos, determinados e misteriosos, buscando sempre a verdade e a profundidade emocional. S�o leais e comprometidos, por�m podem ser desconfiados e ciumentos. Valorizam a autenticidade e a conex�o verdadeira em seus relacionamentos. ")
                                                                   caso 22, 23, 24, 25, 26, 27, 28, 29, 30
                                                                        escreval ("Voc� � um Sagitariano")
                                                                        escreval ("Sagitarianos s�o aventureiros, otimistas e soci�veis, sempre em busca de novas experi�ncias e conhecimento. Valorizam a liberdade e a independ�ncia, mas podem se entediar com facilidade. T�m uma atitude positiva em rela��o � vida e s�o inspiradores para os outros. ")
                                                                   outrocaso
                                                                       escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                                           fimescolha
                                                        senao
                                                             se (mes = "Dez") ou (mes = "Dezembro") entao
                                                                escolha dia
                                                                        caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
                                                                             escreval ("Voc� � um Sagitariano")
                                                                             escreval ("Sagitarianos s�o aventureiros, otimistas e soci�veis, sempre em busca de novas experi�ncias e conhecimento. Valorizam a liberdade e a independ�ncia, mas podem se entediar com facilidade. T�m uma atitude positiva em rela��o � vida e s�o inspiradores para os outros. ")
                                                                        caso 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                                             escreval ("Voc� � um Capric�rniano. ")
                                                                             escreval ("Capricornianos s�o ambiciosos, respons�veis e pr�ticos. Valorizam trabalho �rduo, disciplina e t�m uma abordagem s�ria � vida. S�o pacientes, focados em objetivos de longo prazo e leais nas rela��es. Podem ser reservados e inflex�veis, mas s�o conhecidos por sua perseveran�a e confiabilidade. ")
                                                                        outrocaso
                                                                                 escreval ("Descupe, mas n�o foi poss�vel indentificar seu signo. Por favor, verifique a data informada. ")
                                                                fimescolha
                                                             fimse
                                                        fimse
                                                   fimse
                                              fimse
                                         fimse
                                    fimse
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      fimse
fimalgoritmo