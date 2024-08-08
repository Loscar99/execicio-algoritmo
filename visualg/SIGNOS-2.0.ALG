algoritmo "signos-2.0"
var
    mes: caracter
    dia: inteiro
inicio
      escrevaL ("Vamos descobrir qual é o seu signo.")
      escreva ("Qual o mês que você nasceu? ")
      leia (mes)
      escreva ("Qual o dia que você nasceu? ")
      leia (dia)

      se (mes = "Jan") ou (mes = "Janeiro") entao
         escolha dia
                 caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                      escreval ("Você é um Capricórniano. ")
                      escreval ("Capricornianos são ambiciosos, responsáveis e práticos. Valorizam trabalho árduo, disciplina e têm uma abordagem séria à vida. São pacientes, focados em objetivos de longo prazo e leais nas relações. Podem ser reservados e inflexíveis, mas são conhecidos por sua perseverança e confiabilidade. ")
                 caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                      escreval ("Você é um Aquariáno. ")
                      escreval ("Aquarianos são independentes, inovadores e humanitários, valorizando liberdade e originalidade. São curiosos e sociais, porém podem ser imprevisíveis e distantes emocionalmente. Têm um forte senso de justiça e se envolvem em causas sociais. ")
                 outrocaso
                          escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
         fimescolha
      senao
           se (mes = "Fev") ou (mes = "Fevereiro") entao
              escolha dia
                      caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18
                           escreval ("Você é um Aquariáno. ")
                           escreval ("Aquarianos são independentes, inovadores e humanitários, valorizando liberdade e originalidade. São curiosos e sociais, porém podem ser imprevisíveis e distantes emocionalmente. Têm um forte senso de justiça e se envolvem em causas sociais. ")
                      caso 19, 20, 21, 22, 23, 24, 25, 26, 27, 28
                           escreval ("Você é Pisciano. ")
                           escreval ("Piscianos são empáticos, intuitivos e sonhadores, valorizando a sensibilidade e a compaixão. São criativos e artísticos, mas podem ser vulneráveis emocionalmente. Buscam paz e harmonia, evitando conflitos, e são idealistas, buscando um mundo melhor. ")
                      outrocaso
                               escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                      fimescolha
           senao
                se (mes = "Mar") ou (mes = "Março") entao
                   escolha dia
                           caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
                                escreval ("Você é um pisciano. ")
                                escreval ("Piscianos são empáticos, intuitivos e sonhadores, valorizando a sensibilidade e a compaixão. São criativos e artísticos, mas podem ser vulneráveis emocionalmente. Buscam paz e harmonia, evitando conflitos, e são idealistas, buscando um mundo melhor. ")
                           caso 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                escreval ("Você é um Ariano. ")
                                escreval ("Arianos são energéticos, determinados e líderes naturais, gostando de desafios e sendo pioneiros. São corajosos, diretos e valorizam a independência. Por vezes podem ser impacientes e agressivos. ")
                           outrocaso
                               escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                      fimescolha
                senao
                     se (mes = "Abr") ou (mes = "Abril") entao
                        escolha dia
                                caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                     escreval ("Você é um Ariano. ")
                                     escreval ("Arianos são energéticos, determinados e líderes naturais, gostando de desafios e sendo pioneiros. São corajosos, diretos e valorizam a independência. Por vezes podem ser impacientes e agressivos. ")
                                caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30
                                     escreval ("Você é um Taurino")
                                     escreval ("Taurinos são determinados, estáveis e práticos, valorizando segurança e estabilidade. São pacientes e confiáveis, apreciam prazeres sensoriais e são conhecidos por sua teimosia. Nas relações, são carinhosos, leais e valorizam a harmonia. ")
                                outrocaso
                                         escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                        fimescolha
                     senao
                          se (mes = "Mai") ou (mes = "Maio") entao
                             escolha dia
                                     caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                          escreval ("Você é um Taurino")
                                          escreval ("Taurinos são determinados, estáveis e práticos, valorizando segurança e estabilidade. São pacientes e confiáveis, apreciam prazeres sensoriais e são conhecidos por sua teimosia. Nas relações, são carinhosos, leais e valorizam a harmonia. ")
                                     caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                          escreval ("Você é um Geminiano")
                                          escreval ("Geminianos são versáteis, curiosos e comunicativos, gostando de interagir e trocar ideias. São adaptáveis e buscam constantemente novas experiências, mas podem ser superficiais ou inconstantes. Valorizam a liberdade e a variedade na vida. ")
                                     outrocaso
                                         escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                                     fimescolha
                          senao
                               se (mes = "Jun") ou (mes = "Junho") entao
                                  escolha dia
                                          caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                                escreval ("Você é um Geminiano")
                                                escreval ("Geminianos são versáteis, curiosos e comunicativos, gostando de interagir e trocar ideias. São adaptáveis e buscam constantemente novas experiências, mas podem ser superficiais ou inconstantes. Valorizam a liberdade e a variedade na vida. ")
                                          caso 21, 22, 23, 24, 25, 26, 27, 28, 29, 30
                                               escreval ("Você é um Canceriano")
                                               escreval ("Cancerianos são sensíveis, intuitivos e protetores, valorizando as relações familiares e emocionais. São receptivos às emoções dos outros e cuidadosos, buscando segurança e estabilidade emocional. ")
                                          outrocaso
                                                   escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                                  fimescolha
                               senao
                                    se (mes = "Jul") ou (mes = "Julho") entao
                                       escolha dia
                                               caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
                                                    escreval ("Você é um Canceriano")
                                                    escreval ("Cancerianos são sensíveis, intuitivos e protetores, valorizando as relações familiares e emocionais. São receptivos às emoções dos outros e cuidadosos, buscando segurança e estabilidade emocional. ")
                                               caso 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                    escreval ("Você é um Leonino")
                                                    escreval ("Leoninos são generosos, autoconfiantes e líderes naturais, gostando de ser o centro das atenções. São carismáticos e têm grande presença, porém podem ser arrogantes. Valorizam a lealdade, a integridade e desejam deixar sua marca no mundo. ")
                                               outrocaso
                                                   escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                                       fimescolha
                                    senao
                                         se (mes = "Ago") ou (mes = "Agosto") entao
                                            escolha dia
                                                    caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
                                                         escreval ("Você é um Leonino")
                                                         escreval ("Leoninos são generosos, autoconfiantes e líderes naturais, gostando de ser o centro das atenções. São carismáticos e têm grande presença, porém podem ser arrogantes. Valorizam a lealdade, a integridade e desejam deixar sua marca no mundo. ")
                                                    caso 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                         escreval ("Você é um Virginiano")
                                                         escreval ("Virginianos são detalhistas, organizados e práticos, buscando sempre a eficiência e a melhoria constante. São responsáveis, confiáveis e dedicados, mas podem ser críticos. Valorizam a simplicidade e a funcionalidade em tudo o que fazem. ")
                                                    outrocaso
                                                             escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                                            fimescolha
                                         senao
                                              se (mes = "Set") ou (mes = "Setembro") entao
                                                 escolha dia
                                                         caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
                                                              escreval ("Você é um Virginiano")
                                                              escreval ("Virginianos são detalhistas, organizados e práticos, buscando sempre a eficiência e a melhoria constante. São responsáveis, confiáveis e dedicados, mas podem ser críticos. Valorizam a simplicidade e a funcionalidade em tudo o que fazem. ")
                                                         caso 23, 24, 25, 26, 27, 28, 29, 30
                                                              escreval ("Você é um Libriano")
                                                              escreval ("Librianos são diplomáticos, charmosos e buscam equilíbrio e harmonia. São sociáveis, justos e valorizam relações pessoais. Podem ser indecisos e evitar confrontos. Valorizam a beleza e buscam ambientes agradáveis em suas vidas. ")
                                                         outrocaso
                                                             escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                                                 fimescolha
                                              senao
                                                   se ( mes = "Out") ou (mes = "Outubro") entao
                                                      escolha dia
                                                              caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
                                                                   escreval ("Você é um Libriano")
                                                                   escreval ("Librianos são diplomáticos, charmosos e buscam equilíbrio e harmonia. São sociáveis, justos e valorizam relações pessoais. Podem ser indecisos e evitar confrontos. Valorizam a beleza e buscam ambientes agradáveis em suas vidas. ")
                                                              caso 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                                   escreval ("Você é um Escorpiano")
                                                                   escreval ("Escorpianos são intensos, determinados e misteriosos, buscando sempre a verdade e a profundidade emocional. São leais e comprometidos, porém podem ser desconfiados e ciumentos. Valorizam a autenticidade e a conexão verdadeira em seus relacionamentos. ")
                                                              outrocaso
                                                                       escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                                                      fimescolha
                                                   senao
                                                        se (mes = "Nov") ou (mes = "Novembro") entao
                                                           escolha dia
                                                                   caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
                                                                        escreval ("Você é um Escorpiano")
                                                                        escreval ("Escorpianos são intensos, determinados e misteriosos, buscando sempre a verdade e a profundidade emocional. São leais e comprometidos, porém podem ser desconfiados e ciumentos. Valorizam a autenticidade e a conexão verdadeira em seus relacionamentos. ")
                                                                   caso 22, 23, 24, 25, 26, 27, 28, 29, 30
                                                                        escreval ("Você é um Sagitariano")
                                                                        escreval ("Sagitarianos são aventureiros, otimistas e sociáveis, sempre em busca de novas experiências e conhecimento. Valorizam a liberdade e a independência, mas podem se entediar com facilidade. Têm uma atitude positiva em relação à vida e são inspiradores para os outros. ")
                                                                   outrocaso
                                                                       escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
                                                           fimescolha
                                                        senao
                                                             se (mes = "Dez") ou (mes = "Dezembro") entao
                                                                escolha dia
                                                                        caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
                                                                             escreval ("Você é um Sagitariano")
                                                                             escreval ("Sagitarianos são aventureiros, otimistas e sociáveis, sempre em busca de novas experiências e conhecimento. Valorizam a liberdade e a independência, mas podem se entediar com facilidade. Têm uma atitude positiva em relação à vida e são inspiradores para os outros. ")
                                                                        caso 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
                                                                             escreval ("Você é um Capricórniano. ")
                                                                             escreval ("Capricornianos são ambiciosos, responsáveis e práticos. Valorizam trabalho árduo, disciplina e têm uma abordagem séria à vida. São pacientes, focados em objetivos de longo prazo e leais nas relações. Podem ser reservados e inflexíveis, mas são conhecidos por sua perseverança e confiabilidade. ")
                                                                        outrocaso
                                                                                 escreval ("Descupe, mas não foi possível indentificar seu signo. Por favor, verifique a data informada. ")
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