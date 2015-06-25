'
'          ///////  ///////  //////   //////   ///////  //   //  ///////
'         //       //   //  //   //  //   //  //   //  //// //  //   //
'        //       ///////  /////    //////   //   //  ///////  //   //
'       //       //   //  //  //   //   //  //   //  // ////  //   //
'      ///////  //   //  //   //  //////   ///////  //   //  ///////
'                    __  __      ____ __   __       __
'                   /   /  \ /\ \ /  /__\ /  \ /   /___
'                   \__ \__/ \ \/ \  \ \  \__/ \__ \__
'                            ____ __   __        __
'                      / /\ \ /  /___ /__\ /\ \ /  \
'                      \ \ \/ \  \__  \ \  \ \/ \__/
'               __   __     ____ __        __        __   __
'              \  \ /___     /  /__\ /\ \ /  \ /  \ /___ /__
'              /__/ \__      \  \  / \ \/ \,_/ \__/ \__   __/
'                                          '
'      < PRESSIONE F5 PARA ATIVAR >       Diogenes Monteiro  -  07/07/96
'
DECLARE SUB Tanque1 (hora1)
DECLARE SUB Tanque2 (hora2)
DECLARE SUB Tanque3 (hora3)
DECLARE SUB Tanque4 (hora4)
DECLARE SUB Tanque5 (hora5)
DECLARE SUB Tanque6 (hora6)
DECLARE SUB Tanque7 (hora7)
DECLARE SUB Tanque8 (hora8)
DECLARE SUB Tanque9 (hora9)
DECLARE SUB Tanque10 (hora10)
DECLARE SUB Tanque11 (hora11)
DECLARE SUB Tanque12 (hora12)
DECLARE SUB Tanque13 (hora13)
DECLARE SUB Tanque14 (hora14)
DECLARE SUB Tanque15 (hora15)
DECLARE SUB Tanque16 (hora16)
DECLARE SUB Tanque17 (hora17)
DECLARE SUB Tanque18 (hora18)
DECLARE SUB Tanque19 (hora19)
DECLARE SUB Tanque20 (hora20)
DECLARE SUB Vertical (superficieA)
DECLARE SUB Horizontal1 (superficieA)
DECLARE SUB Horizontal2 (superficieB)
        SCREEN 2
PRINT "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *"
PRINT "*                                                                             *"
PRINT "*          ///////  ///////  //////   //////   ///////  //   //  ///////      *"
PRINT "*         //       //   //  //   //  //   //  //   //  //// //  //   //       *"
PRINT "*        //       ///////  /////    //////   //   //  ///////  //   //        *"
PRINT "*       //       //   //  //  //   //   //  //   //  // ////  //   //         *"
PRINT "*      ///////  //   //  //   //  //////   ///////  //   //  ///////          *"
PRINT "*                    __  __      ____ __   __       __                        *"
PRINT "*                   /   /  \ /\ \ /  /__\ /  \ /   /___                       *"
PRINT "*                   \__ \__/ \ \/ \  \ \  \__/ \__ \__                        *"
PRINT "*                             ____ __   __        __                          *"
PRINT "*                       / /\ \ /  /___ /__\ /\ \ /  \                         *"
PRINT "*                       \ \ \/ \  \__  \ \  \ \/ \__/                         *"
PRINT "*                __   __     ____ __        __        __   __                 *"
PRINT "*               \  \ /___     /  /__\ /\ \ /  \ /  \ /___ /__                 *"
PRINT "*               /__/ \__      \  \  / \ \/ \,_/ \__/ \__   __/                *"
PRINT "*                                           '                                 *"
PRINT "*                                                                             *"
PRINT "*                                                                             *"
PRINT "*                                                                             *"
PRINT "*                                                                             *"
PRINT "*                                                                             *"
PRINT "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *"
        CLEAR
        DO WHILE INKEY$ = ""
        LOCATE 19, 26: PRINT "< PRESSIONE QUALQUER TECLA >"
        IF INKEY$ = "" THEN SLEEP 1 ELSE GOTO 5
        LOCATE 19, 26: PRINT "                            "
        IF INKEY$ = "" THEN SLEEP 1 ELSE GOTO 5
        LOOP
5
        ON ERROR GOTO AbrirDirTanques
        OPEN "C:\tanques\tanque1.dat" FOR INPUT AS #1
        INPUT #1, capacidade1, volume1, diametro1, comprimento1, superficie1, porcentagem1, conteudo1$
        CLOSE #1
        ON ERROR GOTO 0
10
        LINE (0, 0)-(640, 190), 1, BF: LINE (11, 5)-(627, 17), 0, BF
        LINE (11, 23)-(627, 62), 0, BF: LINE (11, 64)-(627, 185), 0, BF
        LINE (180, 82)-(450, 166), 1, B: PAINT (15, 70), CHR$(85)
        LOCATE 2, 34: PRINT "TELA PRINCIPAL"
        LOCATE 5, 32: PRINT "Tanques de 1 a 20."
        LOCATE 7, 26: PRINT "21-Tabela Geral   22-Finaliza"
        LOCATE 12, 36: PRINT " Opcao : "
        LOCATE 16, 39: PRINT "   "
        LOCATE 16, 40: INPUT "", tq%
        IF tq% > 22 THEN GOTO 13
        IF tq% < 1 THEN GOTO 13
        IF tq% = 22 THEN END
        IF tq% = 21 THEN GOTO 20
        IF 1 <= tq% <= 20 THEN GOTO 11
11
        LINE (0, 0)-(640, 190), 1, BF: LINE (11, 5)-(300, 160), 0, BF
        LINE (15, 6)-(296, 149), 1, B: LINE (313, 5)-(627, 160), 0, BF
        LINE (317, 80)-(623, 133), 1, B: LINE (317, 135)-(623, 159), 1, B: LINE (11, 166)-(627, 185), 0, BF
        IF tq% = 1 THEN GOTO Tanque1
        IF tq% = 2 THEN GOTO Tanque2
        IF tq% = 3 THEN GOTO Tanque3
        IF tq% = 4 THEN GOTO Tanque4
        IF tq% = 5 THEN GOTO Tanque5
        IF tq% = 6 THEN GOTO Tanque6
        IF tq% = 7 THEN GOTO Tanque7
        IF tq% = 8 THEN GOTO Tanque8
        IF tq% = 9 THEN GOTO Tanque9
        IF tq% = 10 THEN GOTO Tanque10
        IF tq% = 11 THEN GOTO Tanque11
        IF tq% = 12 THEN GOTO Tanque12
        IF tq% = 13 THEN GOTO Tanque13
        IF tq% = 14 THEN GOTO Tanque14
        IF tq% = 15 THEN GOTO Tanque15
        IF tq% = 16 THEN GOTO Tanque16
        IF tq% = 17 THEN GOTO Tanque17
        IF tq% = 18 THEN GOTO Tanque18
        IF tq% = 19 THEN GOTO Tanque19
        IF tq% = 20 THEN GOTO Tanque20
13
        LINE (3, 148)-(350, 180), 0, BF
        LINE (3, 148)-(350, 180), 1, B
        LOCATE 20, 14: PRINT "Opcao nao existente."
        LOCATE 22, 4: PRINT "Pressione qualquer tecla para continuar."
        DO WHILE INKEY$ = ""
        LOOP
        GOTO 10
Tanque1:
        Tanque1 (hora1)
        hora1 = 1: GOTO 10
Tanque2:
        Tanque2 (hora2)
        hora2 = 1: GOTO 10
Tanque3:
        Tanque3 (hora3)
        hora3 = 1: GOTO 10
Tanque4:
        Tanque4 (hora4)
        hora4 = 1: GOTO 10
Tanque5:
        Tanque5 (hora5)
        hora5 = 1: GOTO 10
Tanque6:
        Tanque6 (hora6)
        hora6 = 1: GOTO 10
Tanque7:
        Tanque7 (hora7)
        hora7 = 1: GOTO 10
Tanque8:
        Tanque8 (hora8)
        hora8 = 1: GOTO 10
Tanque9:
        Tanque9 (hora9)
        hora9 = 1: GOTO 10
Tanque10:
        Tanque10 (hora10)
        hora10 = 1: GOTO 10
Tanque11:
        Tanque11 (hora11)
        hora11 = 1: GOTO 10
Tanque12:
        Tanque12 (hora12)
        hora12 = 1: GOTO 10
Tanque13:
        Tanque13 (hora13)
        hora13 = 1: GOTO 10
Tanque14:
        Tanque14 (hora14)
        hora14 = 1: GOTO 10
Tanque15:
        Tanque15 (hora15)
        hora15 = 1: GOTO 10
Tanque16:
        Tanque16 (hora16)
        hora16 = 1: GOTO 10
Tanque17:
        Tanque17 (hora17)
        hora17 = 1: GOTO 10
Tanque18:
        Tanque18 (hora18)
        hora18 = 1: GOTO 10
Tanque19:
        Tanque19 (hora19)
        hora19 = 1: GOTO 10
Tanque20:
        Tanque20 (hora20)
        hora20 = 1: GOTO 10
AbrirDirTanques:
        LOCATE 19, 14: PRINT "O PROGRAMA ABRIRA O DIRETORIO <TANQUES> NA UNIDADE C:"
        LOCATE 20, 12: PRINT "ONDE SERAO GRAVADOS OS ARQUIVOS  TANQUE1, TANQUE2, ETC..."
        LOCATE 21, 10: PRINT "PRESSIONE ENTER PARA CONTINUAR E ESC PARA REDEFINIR A UNIDADE."
        LOCATE 18, 23: PRINT "NAO ENCONTRADO DIRETORIO <TANQUES>"
        DO WHILE INKEY$ <> CHR$(13) OR INKEY$ <> CHR$(27)
        IF INKEY$ = CHR$(13) THEN GOTO 15
        IF INKEY$ = CHR$(27) THEN 14
        LOOP
14
        LOCATE 18, 23: PRINT "                                  "
        LOCATE 19, 12: PRINT "ENTRE NO LOCALIZAR DO QBASIC E DEPOIS NO ALTERAR E DIGITE"
        LOCATE 20, 8: PRINT "NO <Procurar por :> C: E NO <Alterar para :> UNIDADE DESEJADA (X:)"
        LOCATE 21, 7: PRINT "   E, EM SEGUIDA, COLOQUE NO <Alterar tudo> E PRESSIONE ENTER.   "
        SLEEP 3: END
15
        MKDIR "C:\Tanques"
        capacidade1 = 100: volume1 = 100: diametro1 = 2: comprimento1 = 10: superficie1 = .1: porcentagem1 = 100: conteudo1$ = "Indeterm."
        OPEN "C:\tanques\tanque1.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade1, volume1, diametro1, comprimento1, superficie1, porcentagem1, conteudo1$
        CLOSE #1
        capacidade2 = 100: volume2 = 100: diametro2 = 2: comprimento2 = 10: superficie2 = .1: porcentagem2 = 100: conteudo2$ = "Indeterm."
        OPEN "C:\tanques\tanque2.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade2, volume2, diametro2, comprimento2, superficie2, porcentagem2, conteudo2$
        CLOSE #1
        capacidade3 = 100: volume3 = 100: diametro3 = 2: comprimento3 = 10: superficie3 = .1: porcentagem3 = 100: conteudo3$ = "Indeterm."
        OPEN "C:\tanques\tanque3.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade3, volume3, diametro3, comprimento3, superficie3, porcentagem3, conteudo3$
        CLOSE #1
        capacidade4 = 100: volume4 = 100: diametro4 = 2: comprimento4 = 10: superficie4 = .1: porcentagem4 = 100: conteudo4$ = "Indeterm."
        OPEN "C:\tanques\tanque4.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade4, volume4, diametro4, comprimento4, superficie4, porcentagem4, conteudo4$
        CLOSE #1
        capacidade5 = 100: volume5 = 100: diametro5 = 2: comprimento5 = 10: superficie5 = .1: porcentagem5 = 100: conteudo5$ = "Indeterm."
        OPEN "C:\tanques\tanque5.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade5, volume5, diametro5, comprimento5, superficie5, porcentagem5, conteudo5$
        CLOSE #1
        capacidade6 = 100: volume6 = 100: diametro6 = 2: comprimento6 = 10: superficie6 = .1: porcentagem6 = 100: conteudo6$ = "Indeterm."
        OPEN "C:\tanques\tanque6.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade6, volume6, diametro6, comprimento6, superficie6, porcentagem6, conteudo6$
        CLOSE #1
        capacidade7 = 100: volume7 = 100: diametro7 = 2: comprimento7 = 10: superficie7 = .1: porcentagem7 = 100: conteudo7$ = "Indeterm."
        OPEN "C:\tanques\tanque7.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade7, volume7, diametro7, comprimento7, superficie7, porcentagem7, conteudo7$
        CLOSE #1
        capacidade8 = 100: volume8 = 100: diametro8 = 2: comprimento8 = 10: superficie8 = .1: porcentagem8 = 100: conteudo8$ = "Indeterm."
        OPEN "C:\tanques\tanque8.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade8, volume8, diametro8, comprimento8, superficie8, porcentagem8, conteudo8$
        CLOSE #1
        capacidade9 = 100: volume9 = 100: diametro9 = 2: comprimento9 = 10: superficie9 = .1: porcentagem9 = 100: conteudo9$ = "Indeterm."
        OPEN "C:\tanques\tanque9.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade9, volume9, diametro9, comprimento9, superficie9, porcentagem9, conteudo9$
        CLOSE #1
        capacidade10 = 100: volume10 = 100: diametro10 = 2: comprimento10 = 10: superficie10 = .1: porcentagem10 = 100: conteudo10$ = "Indeterm."
        OPEN "C:\tanques\tanque10.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade10, volume10, diametro10, comprimento10, superficie10, porcentagem10, conteudo10$
        CLOSE #1
        capacidade11 = 100: volume11 = 100: diametro11 = 2: comprimento11 = 10: superficie11 = .1: porcentagem11 = 100: conteudo11$ = "Indeterm."
        OPEN "C:\tanques\tanque11.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade11, volume11, diametro11, comprimento11, superficie11, porcentagem11, conteudo11$
        CLOSE #1
        capacidade12 = 100: volume12 = 100: diametro12 = 2: comprimento12 = 10: superficie12 = .1: porcentagem12 = 100: conteudo12$ = "Indeterm."
        OPEN "C:\tanques\tanque12.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade12, volume12, diametro12, comprimento12, superficie12, porcentagem12, conteudo12$
        CLOSE #1
        capacidade13 = 100: volume13 = 100: diametro13 = 2: comprimento13 = 10: superficie13 = .1: porcentagem13 = 100: conteudo13$ = "Indeterm."
        OPEN "C:\tanques\tanque13.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade13, volume13, diametro13, comprimento13, superficie13, porcentagem13, conteudo13$
        CLOSE #1
        capacidade14 = 100: volume14 = 100: diametro14 = 2: comprimento14 = 10: superficie14 = .1: porcentagem14 = 100: conteudo14$ = "Indeterm."
        OPEN "C:\tanques\tanque14.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade14, volume14, diametro14, comprimento14, superficie14, porcentagem14, conteudo14$
        CLOSE #1
        capacidade15 = 100: volume15 = 100: diametro15 = 2: altura15 = 10: superficie15 = .1: porcentagem15 = 100: conteudo15$ = "Indeterm."
        OPEN "C:\tanques\tanque15.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade15, volume15, diametro15, altura15, superficie15, porcentagem15, conteudo15$
        CLOSE #1
        capacidade16 = 100: volume16 = 100: diametro16 = 2: altura16 = 10: superficie16 = .1: porcentagem16 = 100: conteudo16$ = "Indeterm."
        OPEN "C:\tanques\tanque16.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade16, volume16, diametro16, altura16, superficie16, porcentagem16, conteudo16$
        CLOSE #1
        capacidade17 = 100: volume17 = 100: diametro17 = 2: altura17 = 10: superficie17 = .1: porcentagem17 = 100: conteudo17$ = "Indeterm."
        OPEN "C:\tanques\tanque17.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade17, volume17, diametro17, altura17, superficie17, porcentagem17, conteudo17$
        CLOSE #1
        capacidade18 = 100: volume18 = 100: diametro18 = 2: altura18 = 10: superficie18 = .1: porcentagem18 = 100: conteudo18$ = "Indeterm."
        OPEN "C:\tanques\tanque18.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade18, volume18, diametro18, altura18, superficie18, porcentagem18, conteudo18$
        CLOSE #1
        capacidade19 = 100: volume19 = 100: diametro19 = 2: altura19 = 10: superficie19 = .1: porcentagem19 = 100: conteudo19$ = "Indeterm."
        OPEN "C:\tanques\tanque19.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade19, volume19, diametro19, altura19, superficie19, porcentagem19, conteudo19$
        CLOSE #1
        capacidade20 = 100: volume20 = 100: diametro20 = 2: altura20 = 10: superficie20 = .1: porcentagem20 = 100: conteudo20$ = "Indeterm."
        OPEN "C:\tanques\tanque20.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade20, volume20, diametro20, altura20, superficie20, porcentagem20, conteudo20$
        CLOSE #1
        RESUME
20
        OPEN "C:\tanques\tanque1.dat" FOR INPUT AS #1
        INPUT #1, capacidade1, volume1, diametro1, comprimento1, superficie1, porcentagem1, conteudo1$
        CLOSE #1
        OPEN "C:\tanques\tanque2.dat" FOR INPUT AS #1
        INPUT #1, capacidade2, volume2, diametro2, comprimento2, superficie2, porcentagem2, conteudo2$
        CLOSE #1
        OPEN "C:\tanques\tanque3.dat" FOR INPUT AS #1
        INPUT #1, capacidade3, volume3, diametro3, comprimento3, superficie3, porcentagem3, conteudo3$
        CLOSE #1
        OPEN "C:\tanques\tanque4.dat" FOR INPUT AS #1
        INPUT #1, capacidade4, volume4, diametro4, comprimento4, superficie4, porcentagem4, conteudo4$
        CLOSE #1
        OPEN "C:\tanques\tanque5.dat" FOR INPUT AS #1
        INPUT #1, capacidade5, volume5, diametro5, comprimento5, superficie5, porcentagem5, conteudo5$
        CLOSE #1
        OPEN "C:\tanques\tanque6.dat" FOR INPUT AS #1
        INPUT #1, capacidade6, volume6, diametro6, comprimento6, superficie6, porcentagem6, conteudo6$
        CLOSE #1
        OPEN "C:\tanques\tanque7.dat" FOR INPUT AS #1
        INPUT #1, capacidade7, volume7, diametro7, comprimento7, superficie7, porcentagem7, conteudo7$
        CLOSE #1
        OPEN "C:\tanques\tanque8.dat" FOR INPUT AS #1
        INPUT #1, capacidade8, volume8, diametro8, comprimento8, superficie8, porcentagem8, conteudo8$
        CLOSE #1
        OPEN "C:\tanques\tanque9.dat" FOR INPUT AS #1
        INPUT #1, capacidade9, volume9, diametro9, comprimento9, superficie9, porcentagem9, conteudo9$
        CLOSE #1
        OPEN "C:\tanques\tanque10.dat" FOR INPUT AS #1
        INPUT #1, capacidade10, volume10, diametro10, comprimento10, superficie10, porcentagem10, conteudo10$
        CLOSE #1
        OPEN "C:\tanques\tanque11.dat" FOR INPUT AS #1
        INPUT #1, capacidade11, volume11, diametro11, comprimento11, superficie11, porcentagem11, conteudo11$
        CLOSE #1
        OPEN "C:\tanques\tanque12.dat" FOR INPUT AS #1
        INPUT #1, capacidade12, volume12, diametro12, comprimento12, superficie12, porcentagem12, conteudo12$
        CLOSE #1
        OPEN "C:\tanques\tanque13.dat" FOR INPUT AS #1
        INPUT #1, capacidade13, volume13, diametro13, comprimento13, superficie13, porcentagem13, conteudo13$
        CLOSE #1
        OPEN "C:\tanques\tanque14.dat" FOR INPUT AS #1
        INPUT #1, capacidade14, volume14, diametro14, comprimento14, superficie14, porcentagem14, conteudo14$
        CLOSE #1
        OPEN "C:\tanques\tanque15.dat" FOR INPUT AS #1
        INPUT #1, capacidade15, volume15, diametro15, altura15, superficie15, porcentagem15, conteudo15$
        CLOSE #1
        OPEN "C:\tanques\tanque16.dat" FOR INPUT AS #1
        INPUT #1, capacidade16, volume16, diametro16, altura16, superficie16, porcentagem16, conteudo16$
        CLOSE #1
        OPEN "C:\tanques\tanque17.dat" FOR INPUT AS #1
        INPUT #1, capacidade17, volume17, diametro17, altura17, superficie17, porcentagem17, conteudo17$
        CLOSE #1
        OPEN "C:\tanques\tanque18.dat" FOR INPUT AS #1
        INPUT #1, capacidade18, volume18, diametro18, altura18, superficie18, porcentagem18, conteudo18$
        CLOSE #1
        OPEN "C:\tanques\tanque19.dat" FOR INPUT AS #1
        INPUT #1, capacidade19, volume19, diametro19, altura19, superficie19, porcentagem19, conteudo19$
        CLOSE #1
        OPEN "C:\tanques\tanque20.dat" FOR INPUT AS #1
        INPUT #1, capacidade20, volume20, diametro20, altura20, superficie20, porcentagem20, conteudo20$
        CLOSE #1
        CLS
        LOCATE 1, 1: PRINT "Tanque    Capac.(L)  Volume(L)  Porc.(%)    Conteudo   Diametro(M) Comp.\Alt.(M)"
        FOR x = 1 TO 20
        LOCATE x + 2, 1: PRINT " "; x
        NEXT x
        LOCATE 3, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade1; volume1; porcentagem1; diametro1; comprimento1
        LOCATE 3, 44: PRINT USING "&&&&&&&&&&"; conteudo1$
        LOCATE 4, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade2; volume2; porcentagem2; diametro2; comprimento2
        LOCATE 4, 44: PRINT USING "&&&&&&&&&&"; conteudo2$
        LOCATE 5, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade3; volume3; porcentagem3; diametro3; comprimento3
        LOCATE 5, 44: PRINT USING "&&&&&&&&&&"; conteudo3$
        LOCATE 6, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade4; volume4; porcentagem4; diametro4; comprimento4
        LOCATE 6, 44: PRINT USING "&&&&&&&&&&"; conteudo4$
        LOCATE 7, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade5; volume5; porcentagem5; diametro5; comprimento5
        LOCATE 7, 44: PRINT USING "&&&&&&&&&&"; conteudo5$
        LOCATE 8, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade6; volume6; porcentagem6; diametro6; comprimento6
        LOCATE 8, 44: PRINT USING "&&&&&&&&&&"; conteudo6$
        LOCATE 9, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade7; volume7; porcentagem7; diametro7; comprimento7
        LOCATE 9, 44: PRINT USING "&&&&&&&&&&"; conteudo7$
        LOCATE 10, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade8; volume8; porcentagem8; diametro8; comprimento8
        LOCATE 10, 44: PRINT USING "&&&&&&&&&&"; conteudo8$
        LOCATE 11, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade9; volume9; porcentagem9; diametro9; comprimento9
        LOCATE 11, 44: PRINT USING "&&&&&&&&&&"; conteudo9$
        LOCATE 12, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade10; volume10; porcentagem10; diametro10; comprimento10
        LOCATE 12, 44: PRINT USING "&&&&&&&&&&"; conteudo10$
        LOCATE 13, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade11; volume11; porcentagem11; diametro11; comprimento11
        LOCATE 13, 44: PRINT USING "&&&&&&&&&&"; conteudo11$
        LOCATE 14, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade12; volume12; porcentagem12; diametro12; comprimento12
        LOCATE 14, 44: PRINT USING "&&&&&&&&&&"; conteudo12$
        LOCATE 15, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade13; volume13; porcentagem13; diametro13; comprimento13
        LOCATE 15, 44: PRINT USING "&&&&&&&&&&"; conteudo13$
        LOCATE 16, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade14; volume14; porcentagem14; diametro14; comprimento14
        LOCATE 16, 44: PRINT USING "&&&&&&&&&&"; conteudo14$
        LOCATE 17, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade15; volume15; porcentagem15; diametro15; altura15
        LOCATE 17, 44: PRINT USING "&&&&&&&&&&"; conteudo15$
        LOCATE 18, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade16; volume16; porcentagem16; diametro16; altura16
        LOCATE 18, 44: PRINT USING "&&&&&&&&&&"; conteudo16$
        LOCATE 19, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade17; volume17; porcentagem17; diametro17; altura17
        LOCATE 19, 44: PRINT USING "&&&&&&&&&&"; conteudo17$
        LOCATE 20, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade18; volume18; porcentagem18; diametro18; altura18
        LOCATE 20, 44: PRINT USING "&&&&&&&&&&"; conteudo18$
        LOCATE 21, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade19; volume19; porcentagem19; diametro19; altura19
        LOCATE 21, 44: PRINT USING "&&&&&&&&&&"; conteudo19$
        LOCATE 22, 11: PRINT USING "#####.##   #####.##     ###.##                 ####.##       ####.##"; capacidade20; volume20; porcentagem20; diametro20; altura20
        LOCATE 22, 44: PRINT USING "&&&&&&&&&&"; conteudo20$
        LINE (0, 11)-(640, 11), 1: LINE (63, 0)-(63, 174), 1: LINE (155, 0)-(155, 174), 1
        LINE (242, 0)-(242, 174), 1: LINE (330, 0)-(330, 174), 1: LINE (432, 0)-(432, 174), 1: LINE (530, 0)-(530, 174), 1
        GOTO 25
Erro:
        giro = 0
        LOCATE 23, 1: PRINT "                                                                                "
        DO WHILE giro < 3
        giro = giro + 1
        LOCATE 23, 1: PRINT "<ERRO> VERIFIQUE A CONEXAO DA IMPRESSORA E O DISPOSITIVO LPT1": SLEEP 1
        LOCATE 23, 1: PRINT "      ": SLEEP 1
        LOOP
        RESUME NEXT
25
        LOCATE 23, 72: PRINT "         "
        LOCATE 23, 1: INPUT "                        A)Voltar      B)Imprimir (Em LPT1)            Opcao : ", tg$
        IF tg$ = "A" OR tg$ = "a" THEN GOTO 10
        IF tg$ = "B" OR tg$ = "b" THEN GOTO 30
        IF tg$ <> "A" OR tg$ <> "a" OR tg$ <> "B" OR tg$ <> "b" THEN GOTO 25
30
        LOCATE 23, 1: PRINT "                                                                               "
        LOCATE 23, 46: PRINT "Data : "; DATE$: LOCATE 23, 64: PRINT "Hora : "; TIME$
        ON ERROR GOTO Erro
        LPRINT
        ON ERROR GOTO 0
        GOTO 25

SUB Horizontal1 (superficieA) STATIC
        LINE (30, 10)-(280, 141), 0, BF: CIRCLE (125, 40), 50, 1
        PSET (76, superficieA), 1
        DRAW "TA0 R98"
        PAINT (125, superficieA + 1), CHR$(85)
        FOR x% = 52 TO 68
        CIRCLE (125, 40), x%, 0
        NEXT x%
        LINE (113, 17)-(138, 19), 1, BF: LINE (122, 15)-(129, 16), 1, BF: LINE (183, 20)-(183, 60), 1
        FOR y% = 20 TO 60 STEP 5
        LINE (183, y%)-(188, y%), 1
        NEXT y%
        LOCATE 3, 26: PRINT "100 %": LOCATE 8, 26: PRINT "0 %"
        PSET (117, 52), 1
        DRAW "TA0 R17 D1 L17 D1 R17 L6 D7 G2 H2 U7 R1 D7 F2 E2 U7 L1 D7 L1 U7 L1 D7"
        LOCATE 10, 3: PRINT "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"
END SUB

SUB Horizontal2 (superficieB) STATIC
        CIRCLE (60, 120), 26, 1, , , 1.8 * .42: CIRCLE (252, 120), 26, 1, , , 1.8 * .42
        LINE (65, 99)-(250, 99), 1: LINE (65, 141)-(250, 141), 1: LINE (87, 130)-(271, 130), 1, , &HFF30
        PSET (33, superficieB), 1
        DRAW "TA0 R246"
        PSET (66, superficieB + 1), 1
        DRAW "TA0 C0 R183"
        LINE (65, 141)-(250, 141), 1: PAINT (100, superficieB + 1), CHR$(85)
        FOR B% = 51 TO 57
        CIRCLE (B%, 120), 26, 1, 98 * (3.14 / 180), 262 * (3.14 / 180), 1.8 * .42
        NEXT B%
        FOR c% = 255 TO 261
        CIRCLE (c%, 120), 26, 1, 275 * (3.14 / 180), 82 * (3.14 / 180), 1.8 * .42
        NEXT c%
        CIRCLE (58, 120), 26, 0, 98 * (3.14 / 180), 262 * (3.14 / 180), 1.8 * .42
        CIRCLE (254, 120), 26, 0, 275 * (3.14 / 180), 82 * (3.14 / 180), 1.8 * .42
        PAINT (28, 113), 0: PAINT (283, 115), 0
        LINE (66, 95)-(72, 99), 1, BF: CIRCLE (105, 96), 13, 1, , , .4 * .42
        CIRCLE (105, 97), 13, 1, 180 * (3.14 / 180), 360 * (3.14 / 180), .4 * .42
        CIRCLE (105, 98), 13, 1, 180 * (3.14 / 180), 360 * (3.14 / 180), .4 * .42
        PSET (60, 137), 1
        DRAW "TA0 L15 U3 R5 U2 L15 D2 R5 D5 F2 E2 R16 U1 L16 U5 R5 L14 R6 D7 R1 U7 R1 D7"
END SUB

SUB Tanque1 (hora1) STATIC
        IF hora1 <> 0 THEN GOTO 100
        DIM quadrohora1%(0 TO 320)
100
        OPEN "C:\tanques\tanque1.dat" FOR INPUT AS #1
        INPUT #1, capacidade1, volume1, diametro1, comprimento1, superficie1, porcentagem1, conteudo1$
        CLOSE #1
110
        IF hora1 <> 0 THEN GOTO 113
        GET (375, 103)-(567, 127), quadrohora1%
113
        PUT (375, 103), quadrohora1%, OR
        superficieA = superficie1 + 20
        superficieB = superficie1 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 1"
115
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade1
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume1
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem1
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo1$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro1; comprimento1
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
120
        hora1 = hora1 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
125
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 130
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 140
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 150
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 160
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 170
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 178
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 179
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 195
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 120
130
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume1 + volumeA
        IF volumeB > capacidade1 OR volumeA < 0 THEN GOTO 125
        volume1 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora1%
        GOTO 180
140
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume1 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume1 THEN GOTO 125
        volume1 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora1%
        GOTO 180
150
        LOCATE 23, 35: INPUT "Conteudo :", conteudo1$
        IF LEN(conteudo1$) > 10 THEN GOTO 125
        GOTO 180
160
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade1
        IF capacidade1 <= 0 THEN GOTO 160
161
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume1
        IF volume1 > capacidade1 OR volume < 0 THEN GOTO 161
162
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo1$
        IF LEN(conteudo1$) > 10 THEN GOTO 162
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora1%
        GOTO 180
170
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro1 / 2
        IF alturamedida = diametro1 GOTO 171
        IF alturamedida = raio GOTO 172
        IF alturamedida > diametro1 OR alturamedida <= 0 THEN GOTO 170
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 173
        IF alturamedida < raio GOTO 174
171
        areatotal = 3.1415 * raio ^ 2
        GOTO 175
172
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 175
173
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 175
174
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 175
175
        volumereal = (areatotal * comprimento1) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
176
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume1 = volumereal: GOTO 180
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 120
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 176
        GOTO 120
178
        LOCATE 23, 35: INPUT "Diametro :", diametro1
        GOTO 180
179
        LOCATE 23, 33: INPUT "Comprimento :", comprimento1
180
        superficie1 = (volume1 * 20) / (capacidade1 / 2)
        IF superficie1 > 35 THEN superficie1 = 20 - (superficie1 - 20): GOTO 190
        IF superficie1 < 35 THEN superficie1 = 20 + (20 - superficie1)
190
        porcentagem1 = (volume1 * 100) / capacidade1
        OPEN "C:\tanques\tanque1.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade1, volume1, diametro1, comprimento1, superficie1, porcentagem1, conteudo1$
        CLOSE #1
        GOTO 110
195
END SUB

SUB Tanque10 (hora10) STATIC
        IF hora10 <> 0 THEN GOTO 1000
        DIM quadrohora10%(0 TO 320)
1000
        OPEN "C:\tanques\tanque10.dat" FOR INPUT AS #1
        INPUT #1, capacidade10, volume10, diametro10, comprimento10, superficie10, porcentagem10, conteudo10$
        CLOSE #1
1010
        IF hora10 <> 0 THEN GOTO 1013
        GET (375, 103)-(567, 127), quadrohora10%
1013
        PUT (375, 103), quadrohora10%, OR
        superficieA = superficie10 + 20
        superficieB = superficie10 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 10"
1015
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade10
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume10
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem10
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo10$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro10; comprimento10
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1020
        hora10 = hora10 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1025
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1030
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1040
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1050
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1060
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1070
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1078
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1079
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1095
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1020
1030
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume10 + volumeA
        IF volumeB > capacidade10 OR volumeA < 0 THEN GOTO 1025
        volume10 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora10%
        GOTO 1080
1040
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume10 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume10 THEN GOTO 1025
        volume10 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora10%
        GOTO 1080
1050
        LOCATE 23, 35: INPUT "Conteudo :", conteudo10$
        IF LEN(conteudo10$) > 10 THEN GOTO 1025
        GOTO 1080
1060
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade10
        IF capacidade10 <= 0 THEN GOTO 1060
1061
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume10
        IF volume10 > capacidade10 OR volume < 0 THEN GOTO 1061
1062
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo10$
        IF LEN(conteudo10$) > 10 THEN GOTO 1062
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora10%
        GOTO 1080
1070
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro10 / 2
        IF alturamedida = diametro10 GOTO 1071
        IF alturamedida = raio GOTO 1072
        IF alturamedida > diametro10 OR alturamedida <= 0 THEN GOTO 1070
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 1073
        IF alturamedida < raio GOTO 1074
1071
        areatotal = 3.1415 * raio ^ 2
        GOTO 1075
1072
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 1075
1073
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 1075
1074
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 1075
1075
        volumereal = (areatotal * comprimento10) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1076
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume10 = volumereal: GOTO 1080
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1020
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1076
1078
        LOCATE 23, 35: INPUT "Diametro :", diametro10
        GOTO 1080
1079
        LOCATE 23, 33: INPUT "Comprimento :", comprimento10
1080
        superficie10 = (volume10 * 20) / (capacidade10 / 2)
        IF superficie10 > 35 THEN superficie10 = 20 - (superficie10 - 20): GOTO 1090
        IF superficie10 < 35 THEN superficie10 = 20 + (20 - superficie10)
1090
        porcentagem10 = (volume10 * 100) / capacidade10
        OPEN "C:\tanques\tanque10.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade10, volume10, diametro10, comprimento10, superficie10, porcentagem10, conteudo10$
        CLOSE #1
        GOTO 1010
1095
END SUB

SUB Tanque11 (hora11) STATIC
        IF hora11 <> 0 THEN GOTO 1100
        DIM quadrohora11%(0 TO 320)
1100
        OPEN "C:\tanques\tanque11.dat" FOR INPUT AS #1
        INPUT #1, capacidade11, volume11, diametro11, comprimento11, superficie11, porcentagem11, conteudo11$
        CLOSE #1
1110
        IF hora11 <> 0 THEN GOTO 1113
        GET (375, 103)-(567, 127), quadrohora11%
1113
        PUT (375, 103), quadrohora11%, OR
        superficieA = superficie11 + 20
        superficieB = superficie11 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 11"
1115
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade11
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume11
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem11
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo11$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro11; comprimento11
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1120
        hora11 = hora11 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1125
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1130
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1140
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1150
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1160
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1170
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1178
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1179
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1195
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1120
1130
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume11 + volumeA
        IF volumeB > capacidade11 OR volumeA < 0 THEN GOTO 1125
        volume11 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora11%
        GOTO 1180
1140
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume11 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume11 THEN GOTO 1125
        volume11 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora11%
        GOTO 1180
1150
        LOCATE 23, 35: INPUT "Conteudo :", conteudo11$
        IF LEN(conteudo11$) > 10 THEN GOTO 1125
        GOTO 1180
1160
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade11
        IF capacidade11 <= 0 THEN GOTO 1160
1161
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume11
        IF volume11 > capacidade11 OR volume < 0 THEN GOTO 1161
1162
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo11$
        IF LEN(conteudo11$) > 10 THEN GOTO 1162
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora11%
        GOTO 1180
1170
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro11 / 2
        IF alturamedida = diametro11 GOTO 1171
        IF alturamedida = raio GOTO 1172
        IF alturamedida > diametro11 OR alturamedida <= 0 THEN GOTO 1170
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 1173
        IF alturamedida < raio GOTO 1174
1171
        areatotal = 3.1415 * raio ^ 2
        GOTO 1175
1172
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 1175
1173
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 1175
1174
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 1175
1175
        volumereal = (areatotal * comprimento11) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1176
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume11 = volumereal: GOTO 1180
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1120
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1176
1178
        LOCATE 23, 35: INPUT "Diametro :", diametro11
        GOTO 1180
1179
        LOCATE 23, 33: INPUT "Comprimento :", comprimento11
1180
        superficie11 = (volume11 * 20) / (capacidade11 / 2)
        IF superficie11 > 35 THEN superficie11 = 20 - (superficie11 - 20): GOTO 1190
        IF superficie11 < 35 THEN superficie11 = 20 + (20 - superficie11)
1190
        porcentagem11 = (volume11 * 100) / capacidade11
        OPEN "C:\tanques\tanque11.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade11, volume11, diametro11, comprimento11, superficie11, porcentagem11, conteudo11$
        CLOSE #1
        GOTO 1110
1195
END SUB

SUB Tanque12 (hora12) STATIC
        IF hora12 <> 0 THEN GOTO 1200
        DIM quadrohora12%(0 TO 320)
1200
        OPEN "C:\tanques\tanque12.dat" FOR INPUT AS #1
        INPUT #1, capacidade12, volume12, diametro12, comprimento12, superficie12, porcentagem12, conteudo12$
        CLOSE #1
1210
        IF hora12 <> 0 THEN GOTO 1213
        GET (375, 103)-(567, 127), quadrohora12%
1213
        PUT (375, 103), quadrohora12%, OR
        superficieA = superficie12 + 20
        superficieB = superficie12 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 12"
1215
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade12
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume12
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem12
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo12$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro12; comprimento12
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1220
        hora12 = hora12 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1225
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1230
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1240
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1250
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1260
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1270
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1278
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1279
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1295
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1220
1230
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume12 + volumeA
        IF volumeB > capacidade12 OR volumeA < 0 THEN GOTO 1225
        volume12 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora12%
        GOTO 1280
1240
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume12 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume12 THEN GOTO 1225
        volume12 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora12%
        GOTO 1280
1250
        LOCATE 23, 35: INPUT "Conteudo :", conteudo12$
        IF LEN(conteudo12$) > 10 THEN GOTO 1225
        GOTO 1280
1260
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade12
        IF capacidade12 <= 0 THEN GOTO 1260
1261
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume12
        IF volume12 > capacidade12 OR volume < 0 THEN GOTO 1261
1262
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo12$
        IF LEN(conteudo12$) > 10 THEN GOTO 1262
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora12%
        GOTO 1280
1270
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro12 / 2
        IF alturamedida = diametro12 GOTO 1271
        IF alturamedida = raio GOTO 1272
        IF alturamedida > diametro12 OR alturamedida <= 0 THEN GOTO 1270
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 1273
        IF alturamedida < raio GOTO 1274
1271
        areatotal = 3.1415 * raio ^ 2
        GOTO 1275
1272
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 1275
1273
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 1275
1274
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 1275
1275
        volumereal = (areatotal * comprimento12) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1276
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume12 = volumereal: GOTO 1280
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1220
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1276
1278
        LOCATE 23, 35: INPUT "Diametro :", diametro12
        GOTO 1280
1279
        LOCATE 23, 33: INPUT "Comprimento :", comprimento12
1280
        superficie12 = (volume12 * 20) / (capacidade12 / 2)
        IF superficie12 > 35 THEN superficie12 = 20 - (superficie12 - 20): GOTO 1290
        IF superficie12 < 35 THEN superficie12 = 20 + (20 - superficie12)
1290
        porcentagem12 = (volume12 * 100) / capacidade12
        OPEN "C:\tanques\tanque12.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade12, volume12, diametro12, comprimento12, superficie12, porcentagem12, conteudo12$
        CLOSE #1
        GOTO 1210
1295
END SUB

SUB Tanque13 (hora13) STATIC
        IF hora13 <> 0 THEN GOTO 1300
        DIM quadrohora13%(0 TO 320)
1300
        OPEN "C:\tanques\tanque13.dat" FOR INPUT AS #1
        INPUT #1, capacidade13, volume13, diametro13, comprimento13, superficie13, porcentagem13, conteudo13$
        CLOSE #1
1310
        IF hora13 <> 0 THEN GOTO 1313
        GET (375, 103)-(567, 127), quadrohora13%
1313
        PUT (375, 103), quadrohora13%, OR
        superficieA = superficie13 + 20
        superficieB = superficie13 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 13"
1315
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade13
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume13
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem13
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo13$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro13; comprimento13
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1320
        hora13 = hora13 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1325
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1330
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1340
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1350
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1360
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1370
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1378
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1379
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1395
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1320
1330
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume13 + volumeA
        IF volumeB > capacidade13 OR volumeA < 0 THEN GOTO 1325
        volume13 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora13%
        GOTO 1380
1340
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume13 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume13 THEN GOTO 1325
        volume13 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora13%
        GOTO 1380
1350
        LOCATE 23, 35: INPUT "Conteudo :", conteudo13$
        IF LEN(conteudo13$) > 10 THEN GOTO 1325
        GOTO 1380
1360
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade13
        IF capacidade13 <= 0 THEN GOTO 1360
1361
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume13
        IF volume13 > capacidade13 OR volume < 0 THEN GOTO 1361
1362
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo13$
        IF LEN(conteudo13$) > 10 THEN GOTO 1362
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora13%
        GOTO 1380
1370
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro13 / 2
        IF alturamedida = diametro13 GOTO 1371
        IF alturamedida = raio GOTO 1372
        IF alturamedida > diametro13 OR alturamedida <= 0 THEN GOTO 1370
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 1373
        IF alturamedida < raio GOTO 1374
1371
        areatotal = 3.1415 * raio ^ 2
        GOTO 1375
1372
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 1375
1373
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 1375
1374
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 1375
1375
        volumereal = (areatotal * comprimento13) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1376
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume13 = volumereal: GOTO 1380
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1320
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1376
1378
        LOCATE 23, 35: INPUT "Diametro :", diametro13
        GOTO 1380
1379
        LOCATE 23, 33: INPUT "Comprimento :", comprimento13
1380
        superficie13 = (volume13 * 20) / (capacidade13 / 2)
        IF superficie13 > 35 THEN superficie13 = 20 - (superficie13 - 20): GOTO 1390
        IF superficie13 < 35 THEN superficie13 = 20 + (20 - superficie13)
1390
        porcentagem13 = (volume13 * 100) / capacidade13
        OPEN "C:\tanques\tanque13.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade13, volume13, diametro13, comprimento13, superficie13, porcentagem13, conteudo13$
        CLOSE #1
        GOTO 1310
1395
END SUB

SUB Tanque14 (hora14) STATIC
        IF hora14 <> 0 THEN GOTO 1400
        DIM quadrohora14%(0 TO 320)
1400
        OPEN "C:\tanques\tanque14.dat" FOR INPUT AS #1
        INPUT #1, capacidade14, volume14, diametro14, comprimento14, superficie14, porcentagem14, conteudo14$
        CLOSE #1
1410
        IF hora14 <> 0 THEN GOTO 1413
        GET (375, 103)-(567, 127), quadrohora14%
1413
        PUT (375, 103), quadrohora14%, OR
        superficieA = superficie14 + 20
        superficieB = superficie14 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 14"
1415
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade14
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume14
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem14
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo14$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro14; comprimento14
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1420
        hora14 = hora14 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1425
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1430
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1440
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1450
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1460
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1470
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1478
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1479
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1495
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1420
1430
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume14 + volumeA
        IF volumeB > capacidade14 OR volumeA < 0 THEN GOTO 1425
        volume14 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora14%
        GOTO 1480
1440
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume14 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume14 THEN GOTO 1425
        volume14 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora14%
        GOTO 1480
1450
        LOCATE 23, 35: INPUT "Conteudo :", conteudo14$
        IF LEN(conteudo14$) > 10 THEN GOTO 1425
        GOTO 1480
1460
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade14
        IF capacidade14 <= 0 THEN GOTO 1460
1461
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume14
        IF volume14 > capacidade14 OR volume < 0 THEN GOTO 1461
1462
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo14$
        IF LEN(conteudo14$) > 10 THEN GOTO 1462
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora14%
        GOTO 1480
1470
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro14 / 2
        IF alturamedida = diametro14 GOTO 1471
        IF alturamedida = raio GOTO 1472
        IF alturamedida > diametro14 OR alturamedida <= 0 THEN GOTO 1470
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 1473
        IF alturamedida < raio GOTO 1474
1471
        areatotal = 3.1415 * raio ^ 2
        GOTO 1475
1472
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 1475
1473
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 1475
1474
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 1475
1475
        volumereal = (areatotal * comprimento14) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1476
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume14 = volumereal: GOTO 1480
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1420
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1476
1478
        LOCATE 23, 35: INPUT "Diametro :", diametro14
        GOTO 1480
1479
        LOCATE 23, 33: INPUT "Comprimento :", comprimento14
1480
        superficie14 = (volume14 * 20) / (capacidade14 / 2)
        IF superficie14 > 35 THEN superficie14 = 20 - (superficie14 - 20): GOTO 1490
        IF superficie14 < 35 THEN superficie14 = 20 + (20 - superficie14)
1490
        porcentagem14 = (volume14 * 100) / capacidade14
        OPEN "C:\tanques\tanque14.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade14, volume14, diametro14, comprimento14, superficie14, porcentagem14, conteudo14$
        CLOSE #1
        GOTO 1410
1495
END SUB

SUB Tanque15 (hora15) STATIC
        IF hora15 <> 0 THEN GOTO 1500
        DIM quadrohora15%(0 TO 320)
1500
        OPEN "C:\tanques\tanque15.dat" FOR INPUT AS #1
        INPUT #1, capacidade15, volume15, diametro15, altura15, superficie15, porcentagem15, conteudo15$
        CLOSE #1
1510
        IF hora15 <> 0 THEN GOTO 1513
        GET (375, 103)-(567, 127), quadrohora15%
1513
        PUT (375, 103), quadrohora15%, OR
        superficieA = superficie15 + 20
Vertical (superficieA)
        LOCATE 20, 17: PRINT "TANQUE 15"
1515
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade15
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume15
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem15
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo15$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Altura :###.## M"; diametro15; altura15
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1520
        hora15 = hora15 + 1
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Altura       H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1525
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1530
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1540
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1550
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1560
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1570
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1577
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1579
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1595
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1520
1530
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume15 + volumeA
        IF volumeB > capacidade15 OR volumeA < 0 THEN GOTO 1525
        volume15 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora15%
        GOTO 1580
1540
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume15 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume15 THEN GOTO 1525
        volume15 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora15%
        GOTO 1580
1550
        LOCATE 23, 35: INPUT "Conteudo :", conteudo15$
        IF LEN(conteudo15$) > 10 THEN GOTO 1525
        GOTO 1580
1560
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade15
        IF capacidade15 <= 0 THEN GOTO 1560
1561
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume15
        IF volume15 > capacidade15 OR volume < 0 THEN GOTO 1561
1562
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo15$
        IF LEN(conteudo15$) > 10 THEN GOTO 1562
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora15%
        GOTO 1580
1570
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        IF alturamedida > altura15 OR alturamedida <= 0 THEN GOTO 1570
        volumereal = ((3.1415 * ((diametro15 / 2) ^ 2)) * alturamedida) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1576
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume15 = volumereal: GOTO 1580
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1520
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1576
1577
        LOCATE 23, 35: INPUT "Diametro :", diametro15
        GOTO 1580
1579
        LOCATE 23, 36: INPUT "Altura :", altura15
1580
        superficie15 = (volume15 * 35) / (capacidade15 / 2)
        IF subst$ = "A" OR subst$ = "a" AND volumereal > capacidade15 THEN GOTO 1576
        IF superficie15 > 35 THEN superficie15 = 35 - (superficie15 - 35): GOTO 1590
        IF superficie15 < 35 THEN superficie15 = 35 + (35 - superficie15)
1590
        porcentagem15 = (volume15 * 100) / capacidade15
        OPEN "C:\tanques\tanque15.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade15, volume15, diametro15, altura15, superficie15, porcentagem15, conteudo15$
        CLOSE #1
        GOTO 1510
1595
END SUB

SUB Tanque16 (hora16) STATIC
        IF hora16 <> 0 THEN GOTO 1600
        DIM quadrohora16%(0 TO 320)
1600
        OPEN "C:\tanques\tanque16.dat" FOR INPUT AS #1
        INPUT #1, capacidade16, volume16, diametro16, altura16, superficie16, porcentagem16, conteudo16$
        CLOSE #1
1610
        IF hora16 <> 0 THEN GOTO 1613
        GET (375, 103)-(567, 127), quadrohora16%
1613
        PUT (375, 103), quadrohora16%, OR
        superficieA = superficie16 + 20
Vertical (superficieA)
        LOCATE 20, 17: PRINT "TANQUE 16"
1615
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade16
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume16
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem16
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo16$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Altura :###.## M"; diametro16; altura16
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1620
        hora16 = hora16 + 1
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Altura       H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1625
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1630
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1640
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1650
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1660
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1670
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1677
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1679
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1695
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1620
1630
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume16 + volumeA
        IF volumeB > capacidade16 OR volumeA < 0 THEN GOTO 1625
        volume16 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora16%
        GOTO 1680
1640
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume16 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume16 THEN GOTO 1625
        volume16 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora16%
        GOTO 1680
1650
        LOCATE 23, 35: INPUT "Conteudo :", conteudo16$
        IF LEN(conteudo16$) > 10 THEN GOTO 1625
        GOTO 1680
1660
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade16
        IF capacidade16 <= 0 THEN GOTO 1660
1661
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume16
        IF volume16 > capacidade16 OR volume < 0 THEN GOTO 1661
1662
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo16$
        IF LEN(conteudo16$) > 10 THEN GOTO 1662
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora16%
        GOTO 1680
1670
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        IF alturamedida > altura16 OR alturamedida <= 0 THEN GOTO 1670
        volumereal = ((3.1415 * ((diametro16 / 2) ^ 2)) * alturamedida) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1676
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume16 = volumereal: GOTO 1680
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1620
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1676
1677
        LOCATE 23, 35: INPUT "Diametro :", diametro16
        GOTO 1680
1679
        LOCATE 23, 36: INPUT "Altura :", altura16
1680
        superficie16 = (volume16 * 35) / (capacidade16 / 2)
        IF superficie16 > 35 THEN superficie16 = 35 - (superficie16 - 35): GOTO 1690
        IF superficie16 < 35 THEN superficie16 = 35 + (35 - superficie16)
1690
        porcentagem16 = (volume16 * 100) / capacidade16
        OPEN "C:\tanques\tanque16.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade16, volume16, diametro16, altura16, superficie16, porcentagem16, conteudo16$
        CLOSE #1
        GOTO 1610
1695
END SUB

SUB Tanque17 (hora17) STATIC
        IF hora17 <> 0 THEN GOTO 1700
        DIM quadrohora17%(0 TO 320)
1700
        OPEN "C:\tanques\tanque17.dat" FOR INPUT AS #1
        INPUT #1, capacidade17, volume17, diametro17, altura17, superficie17, porcentagem17, conteudo17$
        CLOSE #1
1710
        IF hora17 <> 0 THEN GOTO 1713
        GET (375, 103)-(567, 127), quadrohora17%
1713
        PUT (375, 103), quadrohora17%, OR
        superficieA = superficie17 + 20
Vertical (superficieA)
        LOCATE 20, 17: PRINT "TANQUE 17"
1715
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade17
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume17
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem17
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo17$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Altura :###.## M"; diametro17; altura17
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1720
        hora17 = hora17 + 1
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Altura       H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1725
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1730
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1740
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1750
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1760
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1770
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1777
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1779
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1795
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1720
1730
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume17 + volumeA
        IF volumeB > capacidade17 OR volumeA < 0 THEN GOTO 1725
        volume17 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora17%
        GOTO 1780
1740
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume17 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume17 THEN GOTO 1725
        volume17 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora17%
        GOTO 1780
1750
        LOCATE 23, 35: INPUT "Conteudo :", conteudo17$
        IF LEN(conteudo17$) > 10 THEN GOTO 1725
        GOTO 1780
1760
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade17
        IF capacidade17 <= 0 THEN GOTO 1760
1761
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume17
        IF volume17 > capacidade17 OR volume < 0 THEN GOTO 1761
1762
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo17$
        IF LEN(conteudo17$) > 10 THEN GOTO 1762
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora17%
        GOTO 1780
1770
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        IF alturamedida > altura17 OR alturamedida <= 0 THEN GOTO 1770
        volumereal = ((3.1415 * ((diametro17 / 2) ^ 2)) * alturamedida) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1776
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume17 = volumereal: GOTO 1780
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1720
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1776
1777
        LOCATE 23, 35: INPUT "Diametro :", diametro17
        GOTO 1780
1779
        LOCATE 23, 36: INPUT "Altura :", altura17
1780
        superficie17 = (volume17 * 35) / (capacidade17 / 2)
        IF superficie17 > 35 THEN superficie17 = 35 - (superficie17 - 35): GOTO 1790
        IF superficie17 < 35 THEN superficie17 = 35 + (35 - superficie17)
1790
        porcentagem17 = (volume17 * 100) / capacidade17
        OPEN "C:\tanques\tanque17.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade17, volume17, diametro17, altura17, superficie17, porcentagem17, conteudo17$
        CLOSE #1
        GOTO 1710
1795
END SUB

SUB Tanque18 (hora18) STATIC
        IF hora18 <> 0 THEN GOTO 1800
        DIM quadrohora18%(0 TO 320)
1800
        OPEN "C:\tanques\tanque18.dat" FOR INPUT AS #1
        INPUT #1, capacidade18, volume18, diametro18, altura18, superficie18, porcentagem18, conteudo18$
        CLOSE #1
1810
        IF hora18 <> 0 THEN GOTO 1813
        GET (375, 103)-(567, 127), quadrohora18%
1813
        PUT (375, 103), quadrohora18%, OR
        superficieA = superficie18 + 20
Vertical (superficieA)
        LINE (90, 93)-(130, 90), 1
        LINE (130, 90)-(170, 93), 1
        LINE (170, 93)-(170, 87), 1
        LINE (170, 87)-(130, 90), 1
        LINE (130, 90)-(90, 87), 1
        LINE (90, 87)-(90, 93), 1
        LINE (130, 90)-(130, 20), 1
        CIRCLE (130, superficieA), 12, 1, 140 * (3.14 / 180), 40 * (3.14 / 180), .4 * .42
        CIRCLE (130, superficieA), 30, 1, 140 * (3.14 / 180), 40 * (3.14 / 180), .4 * .42
        LOCATE 20, 10: PRINT "TANQUE 18 - BATEDOR 1"
1815
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade18
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume18
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem18
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo18$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Altura :###.## M"; diametro18; altura18
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1820
        hora18 = hora18 + 1
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Altura       H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1825
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1830
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1840
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1850
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1860
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1870
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1877
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1879
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1895
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1820
1830
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume18 + volumeA
        IF volumeB > capacidade18 OR volumeA < 0 THEN GOTO 1825
        volume18 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora18%
        GOTO 1880
1840
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume18 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume18 THEN GOTO 1825
        volume18 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora18%
        GOTO 1880
1850
        LOCATE 23, 35: INPUT "Conteudo :", conteudo18$
        IF LEN(conteudo18$) > 10 THEN GOTO 1825
        GOTO 1880
1860
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade18
        IF capacidade18 <= 0 THEN GOTO 1860
1861
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume18
        IF volume18 > capacidade18 OR volume < 0 THEN GOTO 1861
1862
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo18$
        IF LEN(conteudo18$) > 10 THEN GOTO 1862
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora18%
        GOTO 1880
1870
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        IF alturamedida > altura18 OR alturamedida <= 0 THEN GOTO 1870
        volumereal = ((3.1415 * ((diametro18 / 2) ^ 2)) * alturamedida) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1876
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume18 = volumereal: GOTO 1880
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1820
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1876
1877
        LOCATE 23, 35: INPUT "Diametro :", diametro18
        GOTO 1880
1879
        LOCATE 23, 36: INPUT "Altura :", altura18
1880
        superficie18 = (volume18 * 35) / (capacidade18 / 2)
        IF superficie18 > 35 THEN superficie18 = 35 - (superficie18 - 35): GOTO 1890
        IF superficie18 < 35 THEN superficie18 = 35 + (35 - superficie18)
1890
        porcentagem18 = (volume18 * 100) / capacidade18
        OPEN "C:\tanques\tanque18.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade18, volume18, diametro18, altura18, superficie18, porcentagem18, conteudo18$
        CLOSE #1
        GOTO 1810
1895
END SUB

SUB Tanque19 (hora19) STATIC
        IF hora19 <> 0 THEN GOTO 1900
        DIM quadrohora19%(0 TO 320)
1900
        OPEN "C:\tanques\tanque19.dat" FOR INPUT AS #1
        INPUT #1, capacidade19, volume19, diametro19, altura19, superficie19, porcentagem19, conteudo19$
        CLOSE #1
1910
        IF hora19 <> 0 THEN GOTO 1913
        GET (375, 103)-(567, 127), quadrohora19%
1913
        PUT (375, 103), quadrohora19%, OR
        superficieA = superficie19 + 20
Vertical (superficieA)
        LINE (90, 93)-(130, 90), 1
        LINE (130, 90)-(170, 93), 1
        LINE (170, 93)-(170, 87), 1
        LINE (170, 87)-(130, 90), 1
        LINE (130, 90)-(90, 87), 1
        LINE (90, 87)-(90, 93), 1
        LINE (130, 90)-(130, 20), 1
        CIRCLE (130, superficieA), 12, 1, 140 * (3.14 / 180), 40 * (3.14 / 180), .4 * .42
        CIRCLE (130, superficieA), 30, 1, 140 * (3.14 / 180), 40 * (3.14 / 180), .4 * .42
        LOCATE 20, 10: PRINT "TANQUE 19 - BATEDOR 2"
1915
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade19
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume19
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem19
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo19$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Altura :###.## M"; diametro19; altura19
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
1920
        hora19 = hora19 + 1
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Altura       H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
1925
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 1930
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 1940
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 1950
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 1960
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 1970
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 1977
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 1979
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 1995
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 1920
1930
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume19 + volumeA
        IF volumeB > capacidade19 OR volumeA < 0 THEN GOTO 1925
        volume19 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora19%
        GOTO 1980
1940
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume19 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume19 THEN GOTO 1925
        volume19 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora19%
        GOTO 1980
1950
        LOCATE 23, 35: INPUT "Conteudo :", conteudo19$
        IF LEN(conteudo19$) > 10 THEN GOTO 1925
        GOTO 1980
1960
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade19
        IF capacidade19 <= 0 THEN GOTO 1960
1961
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume19
        IF volume19 > capacidade19 OR volume < 0 THEN GOTO 1961
1962
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo19$
        IF LEN(conteudo19$) > 10 THEN GOTO 1962
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora19%
        GOTO 1980
1970
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        IF alturamedida > altura19 OR alturamedida <= 0 THEN GOTO 1970
        volumereal = ((3.1415 * ((diametro19 / 2) ^ 2)) * alturamedida) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
1976
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume19 = volumereal: GOTO 1980
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 1920
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 1976
1977
        LOCATE 23, 35: INPUT "Diametro :", diametro19
        GOTO 1980
1979
        LOCATE 23, 36: INPUT "Altura :", altura19
1980
        superficie19 = (volume19 * 35) / (capacidade19 / 2)
        IF superficie19 > 35 THEN superficie19 = 35 - (superficie19 - 35): GOTO 1990
        IF superficie19 < 35 THEN superficie19 = 35 + (35 - superficie19)
1990
        porcentagem19 = (volume19 * 100) / capacidade19
        OPEN "C:\tanques\tanque19.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade19, volume19, diametro19, altura19, superficie19, porcentagem19, conteudo19$
        CLOSE #1
        GOTO 1910
1995
END SUB

SUB Tanque2 (hora2) STATIC
        IF hora2 <> 0 THEN GOTO 200
        DIM quadrohora2%(0 TO 320)
200
        OPEN "C:\tanques\tanque2.dat" FOR INPUT AS #1
        INPUT #1, capacidade2, volume2, diametro2, comprimento2, superficie2, porcentagem2, conteudo2$
        CLOSE #1
210
        IF hora2 <> 0 THEN GOTO 213
        GET (375, 103)-(567, 127), quadrohora2%
213
        PUT (375, 103), quadrohora2%, OR
        superficieA = superficie2 + 20
        superficieB = superficie2 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 2"
215
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade2
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume2
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem2
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo2$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro2; comprimento2
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
220
        hora2 = hora2 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
225
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 230
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 240
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 250
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 260
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 270
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 278
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 279
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 295
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 220
230
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume2 + volumeA
        IF volumeB > capacidade2 OR volumeA < 0 THEN GOTO 225
        volume2 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora2%
        GOTO 280
240
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume2 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume2 THEN GOTO 225
        volume2 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora2%
        GOTO 280
250
        LOCATE 23, 35: INPUT "Conteudo :", conteudo2$
        IF LEN(conteudo2$) > 10 THEN GOTO 225
        GOTO 280
260
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade2
        IF capacidade2 <= 0 THEN GOTO 260
261
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume2
        IF volume2 > capacidade2 OR volume < 0 THEN GOTO 261
262
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo2$
        IF LEN(conteudo2$) > 10 THEN GOTO 262
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora2%
        GOTO 280
270
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro2 / 2
        IF alturamedida = diametro2 GOTO 271
        IF alturamedida = raio GOTO 272
        IF alturamedida > diametro2 OR alturamedida <= 0 THEN GOTO 270
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 273
        IF alturamedida < raio GOTO 274
271
        areatotal = 3.1415 * raio ^ 2
        GOTO 275
272
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 275
273
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 275
274
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 275
275
        volumereal = (areatotal * comprimento2) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
276
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume2 = volumereal: GOTO 280
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 220
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 276
278
        LOCATE 23, 35: INPUT "Diametro :", diametro2
        GOTO 280
279
        LOCATE 23, 33: INPUT "Comprimento :", comprimento2
280
        superficie2 = (volume2 * 20) / (capacidade2 / 2)
        IF superficie2 > 35 THEN superficie2 = 20 - (superficie2 - 20): GOTO 290
        IF superficie2 < 35 THEN superficie2 = 20 + (20 - superficie2)
290
        porcentagem2 = (volume2 * 100) / capacidade2
        OPEN "C:\tanques\tanque2.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade2, volume2, diametro2, comprimento2, superficie2, porcentagem2, conteudo2$
        CLOSE #1
        GOTO 210
295
END SUB

SUB Tanque20 (hora20) STATIC
        IF hora20 <> 0 THEN GOTO 2000
        DIM quadrohora20%(0 TO 320)
2000
        OPEN "C:\tanques\tanque20.dat" FOR INPUT AS #1
        INPUT #1, capacidade20, volume20, diametro20, altura20, superficie20, porcentagem20, conteudo20$
        CLOSE #1
2010
        IF hora20 <> 0 THEN GOTO 2013
        GET (375, 103)-(567, 127), quadrohora20%
2013
        PUT (375, 103), quadrohora20%, OR
        superficieA = superficie20 + 20
Vertical (superficieA)
        LOCATE 20, 10: PRINT "TANQUE 20 - BATEDOR 3"
2015
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade20
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume20
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem20
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo20$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Altura :###.## M"; diametro20; altura20
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
2020
        hora20 = hora20 + 1
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Altura       H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
2025
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 2030
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 2040
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 2050
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 2060
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 2070
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 2077
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 2079
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 2095
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 2020
2030
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume20 + volumeA
        IF volumeB > capacidade20 OR volumeA < 0 THEN GOTO 2025
        volume20 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora20%
        GOTO 2080
2040
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume20 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume20 THEN GOTO 2025
        volume20 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora20%
        GOTO 2080
2050
        LOCATE 23, 35: INPUT "Conteudo :", conteudo20$
        IF LEN(conteudo20$) > 10 THEN GOTO 2025
        GOTO 2080
2060
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade20
        IF capacidade20 <= 0 THEN GOTO 2060
2061
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume20
        IF volume20 > capacidade20 OR volume < 0 THEN GOTO 2061
2062
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo20$
        IF LEN(conteudo20$) > 10 THEN GOTO 2062
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora20%
        GOTO 2080
2070
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        IF alturamedida > altura20 OR alturamedida <= 0 THEN GOTO 2070
        volumereal = ((3.1415 * ((diametro20 / 2) ^ 2)) * alturamedida) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
2076
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume20 = volumereal: GOTO 2080
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 2020
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 2076
2077
        LOCATE 23, 35: INPUT "Diametro :", diametro20
        GOTO 2080
2079
        LOCATE 23, 36: INPUT "Altura :", altura20
2080
        superficie20 = (volume20 * 35) / (capacidade20 / 2)
        IF superficie20 > 35 THEN superficie20 = 35 - (superficie20 - 35): GOTO 2090
        IF superficie20 < 35 THEN superficie20 = 35 + (35 - superficie20)
2090
        porcentagem20 = (volume20 * 100) / capacidade20
        OPEN "C:\tanques\tanque20.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade20, volume20, diametro20, altura20, superficie20, porcentagem20, conteudo20$
        CLOSE #1
        GOTO 2010
2095
END SUB

SUB Tanque3 (hora3) STATIC
        IF hora3 <> 0 THEN GOTO 300
        DIM quadrohora3%(0 TO 320)
300
        OPEN "C:\tanques\tanque3.dat" FOR INPUT AS #1
        INPUT #1, capacidade3, volume3, diametro3, comprimento3, superficie3, porcentagem3, conteudo3$
        CLOSE #1
310
        IF hora3 <> 0 THEN GOTO 313
        GET (375, 103)-(567, 127), quadrohora3%
313
        PUT (375, 103), quadrohora3%, OR
        superficieA = superficie3 + 20
        superficieB = superficie3 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 3"
315
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade3
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume3
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem3
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo3$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro3; comprimento3
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
320
        hora3 = hora3 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
325
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 330
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 340
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 350
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 360
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 370
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 378
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 379
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 395
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 320
330
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume3 + volumeA
        IF volumeB > capacidade3 OR volumeA < 0 THEN GOTO 325
        volume3 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora3%
        GOTO 380
340
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume3 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume3 THEN GOTO 325
        volume3 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora3%
        GOTO 380
350
        LOCATE 23, 35: INPUT "Conteudo :", conteudo3$
        IF LEN(conteudo3$) > 10 THEN GOTO 325
        GOTO 380
360
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade3
        IF capacidade3 <= 0 THEN GOTO 360
361
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume3
        IF volume3 > capacidade3 OR volume < 0 THEN GOTO 361
362
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo3$
        IF LEN(conteudo3$) > 10 THEN GOTO 362
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora3%
        GOTO 380
370
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro3 / 2
        IF alturamedida = diametro3 GOTO 371
        IF alturamedida = raio GOTO 372
        IF alturamedida > diametro3 OR alturamedida <= 0 THEN GOTO 370
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 373
        IF alturamedida < raio GOTO 374
371
        areatotal = 3.1415 * raio ^ 2
        GOTO 375
372
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 375
373
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 375
374
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 375
375
        volumereal = (areatotal * comprimento3) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
376
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume3 = volumereal: GOTO 380
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 320
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 376
378
        LOCATE 23, 35: INPUT "Diametro :", diametro3
        GOTO 380
379
        LOCATE 23, 33: INPUT "Comprimento :", comprimento3
380
        superficie3 = (volume3 * 20) / (capacidade3 / 2)
        IF superficie3 > 35 THEN superficie3 = 20 - (superficie3 - 20): GOTO 390
        IF superficie3 < 35 THEN superficie3 = 20 + (20 - superficie3)
390
        porcentagem3 = (volume3 * 100) / capacidade3
        OPEN "C:\tanques\tanque3.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade3, volume3, diametro3, comprimento3, superficie3, porcentagem3, conteudo3$
        CLOSE #1
        GOTO 310
395
END SUB

SUB Tanque4 (hora4) STATIC
        IF hora4 <> 0 THEN GOTO 400
        DIM quadrohora4%(0 TO 320)
400
        OPEN "C:\tanques\tanque4.dat" FOR INPUT AS #1
        INPUT #1, capacidade4, volume4, diametro4, comprimento4, superficie4, porcentagem4, conteudo4$
        CLOSE #1
410
        IF hora4 <> 0 THEN GOTO 413
        GET (375, 103)-(567, 127), quadrohora4%
413
        PUT (375, 103), quadrohora4%, OR
        superficieA = superficie4 + 20
        superficieB = superficie4 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 4"
415
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade4
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume4
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem4
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo4$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro4; comprimento4
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
420
        hora4 = hora4 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
425
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 430
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 440
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 450
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 460
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 470
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 478
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 479
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 495
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 420
430
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume4 + volumeA
        IF volumeB > capacidade4 OR volumeA < 0 THEN GOTO 425
        volume4 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora4%
        GOTO 480
440
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume4 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume4 THEN GOTO 425
        volume4 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora4%
        GOTO 480
450
        LOCATE 23, 35: INPUT "Conteudo :", conteudo4$
        IF LEN(conteudo4$) > 10 THEN GOTO 425
        GOTO 480
460
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade4
        IF capacidade4 <= 0 THEN GOTO 460
461
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume4
        IF volume4 > capacidade4 OR volume < 0 THEN GOTO 461
462
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo4$
        IF LEN(conteudo4$) > 10 THEN GOTO 462
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora4%
        GOTO 480
470
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro4 / 2
        IF alturamedida = diametro4 GOTO 471
        IF alturamedida = raio GOTO 472
        IF alturamedida > diametro4 OR alturamedida <= 0 THEN GOTO 470
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 473
        IF alturamedida < raio GOTO 474
471
        areatotal = 3.1415 * raio ^ 2
        GOTO 475
472
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 475
473
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 475
474
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 475
475
        volumereal = (areatotal * comprimento4) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
476
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume4 = volumereal: GOTO 480
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 420
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 476
478
        LOCATE 23, 35: INPUT "Diametro :", diametro4
        GOTO 480
479
        LOCATE 23, 33: INPUT "Comprimento :", comprimento4
480
        superficie4 = (volume4 * 20) / (capacidade4 / 2)
        IF superficie4 > 35 THEN superficie4 = 20 - (superficie4 - 20): GOTO 490
        IF superficie4 < 35 THEN superficie4 = 20 + (20 - superficie4)
490
        porcentagem4 = (volume4 * 100) / capacidade4
        OPEN "C:\tanques\tanque4.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade4, volume4, diametro4, comprimento4, superficie4, porcentagem4, conteudo4$
        CLOSE #1
        GOTO 410
495
END SUB

SUB Tanque5 (hora5) STATIC
        IF hora5 <> 0 THEN GOTO 500
        DIM quadrohora5%(0 TO 320)
500
        OPEN "C:\tanques\tanque5.dat" FOR INPUT AS #1
        INPUT #1, capacidade5, volume5, diametro5, comprimento5, superficie5, porcentagem5, conteudo5$
        CLOSE #1
510
        IF hora5 <> 0 THEN GOTO 513
        GET (375, 103)-(567, 127), quadrohora5%
513
        PUT (375, 103), quadrohora5%, OR
        superficieA = superficie5 + 20
        superficieB = superficie5 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 5"
515
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade5
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume5
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem5
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo5$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro5; comprimento5
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
520
        hora5 = hora5 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
525
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 530
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 540
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 550
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 560
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 570
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 578
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 579
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 595
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 520
530
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume5 + volumeA
        IF volumeB > capacidade5 OR volumeA < 0 THEN GOTO 525
        volume5 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora5%
        GOTO 580
540
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume5 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume5 THEN GOTO 525
        volume5 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora5%
        GOTO 580
550
        LOCATE 23, 35: INPUT "Conteudo :", conteudo5$
        IF LEN(conteudo5$) > 10 THEN GOTO 525
        GOTO 580
560
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade5
        IF capacidade5 <= 0 THEN GOTO 560
561
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume5
        IF volume5 > capacidade5 OR volume < 0 THEN GOTO 561
562
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo5$
        IF LEN(conteudo5$) > 10 THEN GOTO 562
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora5%
        GOTO 580
570
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro5 / 2
        IF alturamedida = diametro5 GOTO 571
        IF alturamedida = raio GOTO 572
        IF alturamedida > diametro5 OR alturamedida <= 0 THEN GOTO 570
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 573
        IF alturamedida < raio GOTO 574
571
        areatotal = 3.1415 * raio ^ 2
        GOTO 575
572
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 575
573
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 575
574
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 575
575
        volumereal = (areatotal * comprimento5) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
576
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume5 = volumereal: GOTO 580
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 520
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 576
578
        LOCATE 23, 35: INPUT "Diametro :", diametro5
        GOTO 580
579
        LOCATE 23, 33: INPUT "Comprimento :", comprimento5
580
        superficie5 = (volume5 * 20) / (capacidade5 / 2)
        IF superficie5 > 35 THEN superficie5 = 20 - (superficie5 - 20): GOTO 590
        IF superficie5 < 35 THEN superficie5 = 20 + (20 - superficie5)
590
        porcentagem5 = (volume5 * 100) / capacidade5
        OPEN "C:\tanques\tanque5.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade5, volume5, diametro5, comprimento5, superficie5, porcentagem5, conteudo5$
        CLOSE #1
        GOTO 510
595
END SUB

SUB Tanque6 (hora6) STATIC
        IF hora6 <> 0 THEN GOTO 600
        DIM quadrohora6%(0 TO 320)
600
        OPEN "C:\tanques\tanque6.dat" FOR INPUT AS #1
        INPUT #1, capacidade6, volume6, diametro6, comprimento6, superficie6, porcentagem6, conteudo6$
        CLOSE #1
610
        IF hora6 <> 0 THEN GOTO 613
        GET (375, 103)-(567, 127), quadrohora6%
613
        PUT (375, 103), quadrohora6%, OR
        superficieA = superficie6 + 20
        superficieB = superficie6 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 6"
615
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade6
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume6
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem6
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo6$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro6; comprimento6
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
620
        hora6 = hora6 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
625
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 630
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 640
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 650
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 660
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 670
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 678
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 679
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 695
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 620
630
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume6 + volumeA
        IF volumeB > capacidade6 OR volumeA < 0 THEN GOTO 625
        volume6 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora6%
        GOTO 680
640
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume6 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume6 THEN GOTO 625
        volume6 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora6%
        GOTO 680
650
        LOCATE 23, 35: INPUT "Conteudo :", conteudo6$
        IF LEN(conteudo6$) > 10 THEN GOTO 625
        GOTO 680
660
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade6
        IF capacidade6 <= 0 THEN GOTO 660
661
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume6
        IF volume6 > capacidade6 OR volume < 0 THEN GOTO 661
662
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo6$
        IF LEN(conteudo6$) > 10 THEN GOTO 662
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora6%
        GOTO 680
670
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro6 / 2
        capacidade6% = capacidade6
        IF alturamedida = diametro6 GOTO 671
        IF alturamedida = raio GOTO 672
        IF alturamedida > diametro6 OR alturamedida <= 0 THEN GOTO 670
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 673
        IF alturamedida < raio GOTO 674
671
        areatotal = 3.1415 * raio ^ 2
        GOTO 675
672
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 675
673
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 675
674
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 675
675
        volumereal = (areatotal * comprimento6) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
676
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume6 = volumereal: GOTO 680
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 620
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 676
678
        LOCATE 23, 35: INPUT "Diametro :", diametro6
        GOTO 680
679
        LOCATE 23, 33: INPUT "Comprimento :", comprimento6
680
        superficie6 = (volume6 * 20) / (capacidade6 / 2)
        IF superficie6 > 35 THEN superficie6 = 20 - (superficie6 - 20): GOTO 690
        IF superficie6 < 35 THEN superficie6 = 20 + (20 - superficie6)
690
        porcentagem6 = (volume6 * 100) / capacidade6
        OPEN "C:\tanques\tanque6.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade6, volume6, diametro6, comprimento6, superficie6, porcentagem6, conteudo6$
        CLOSE #1
        GOTO 610
695
END SUB

SUB Tanque7 (hora7) STATIC
        IF hora7 <> 0 THEN GOTO 700
        DIM quadrohora7%(0 TO 320)
700
        OPEN "C:\tanques\tanque7.dat" FOR INPUT AS #1
        INPUT #1, capacidade7, volume7, diametro7, comprimento7, superficie7, porcentagem7, conteudo7$
        CLOSE #1
710
        IF hora7 <> 0 THEN GOTO 713
        GET (375, 103)-(567, 127), quadrohora7%
713
        PUT (375, 103), quadrohora7%, OR
        superficieA = superficie7 + 20
        superficieB = superficie7 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 7"
715
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade7
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume7
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem7
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo7$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro7; comprimento7
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
720
        hora7 = hora7 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
725
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 730
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 740
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 750
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 760
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 770
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 778
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 779
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 795
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 720
730
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume7 + volumeA
        IF volumeB > capacidade7 OR volumeA < 0 THEN GOTO 725
        volume7 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora7%
        GOTO 780
740
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume7 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume7 THEN GOTO 725
        volume7 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora7%
        GOTO 780
750
        LOCATE 23, 35: INPUT "Conteudo :", conteudo7$
        IF LEN(conteudo7$) > 10 THEN GOTO 725
        GOTO 780
760
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade7
        IF capacidade7 <= 0 THEN GOTO 760
761
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume7
        IF volume7 > capacidade7 OR volume < 0 THEN GOTO 761
762
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo7$
        IF LEN(conteudo7$) > 10 THEN GOTO 762
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora7%
        GOTO 780
770
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro7 / 2
        IF alturamedida = diametro7 GOTO 771
        IF alturamedida = raio GOTO 772
        IF alturamedida > diametro7 OR alturamedida <= 0 THEN GOTO 770
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 773
        IF alturamedida < raio GOTO 774
771
        areatotal = 3.1415 * raio ^ 2
        GOTO 775
772
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 775
773
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 775
774
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 775
775
        volumereal = (areatotal * comprimento7) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
776
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume7 = volumereal: GOTO 780
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 720
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 776
778
        LOCATE 23, 35: INPUT "Diametro :", diametro7
        GOTO 780
779
        LOCATE 23, 33: INPUT "Comprimento :", comprimento7
780
        superficie7 = (volume7 * 20) / (capacidade7 / 2)
        IF superficie7 > 35 THEN superficie7 = 20 - (superficie7 - 20): GOTO 790
        IF superficie7 < 35 THEN superficie7 = 20 + (20 - superficie7)
790
        porcentagem7 = (volume7 * 100) / capacidade7
        OPEN "C:\tanques\tanque7.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade7, volume7, diametro7, comprimento7, superficie7, porcentagem7, conteudo7$
        CLOSE #1
        GOTO 710
795
END SUB

SUB Tanque8 (hora8) STATIC
        IF hora8 <> 0 THEN GOTO 800
        DIM quadrohora8%(0 TO 320)
800
        OPEN "C:\tanques\tanque8.dat" FOR INPUT AS #1
        INPUT #1, capacidade8, volume8, diametro8, comprimento8, superficie8, porcentagem8, conteudo8$
        CLOSE #1
810
        IF hora8 <> 0 THEN GOTO 813
        GET (375, 103)-(567, 127), quadrohora8%
813
        PUT (375, 103), quadrohora8%, OR
        superficieA = superficie8 + 20
        superficieB = superficie8 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 8"
815
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade8
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume8
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem8
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo8$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro8; comprimento8
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
820
        hora8 = hora8 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
825
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 830
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 840
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 850
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 860
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 870
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 878
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 879
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 895
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 820
830
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume8 + volumeA
        IF volumeB > capacidade8 OR volumeA < 0 THEN GOTO 825
        volume8 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora8%
        GOTO 880
840
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume8 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume8 THEN GOTO 825
        volume8 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora8%
        GOTO 880
850
        LOCATE 23, 35: INPUT "Conteudo :", conteudo8$
        IF LEN(conteudo8$) > 10 THEN GOTO 825
        GOTO 880
860
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade8
        IF capacidade8 <= 0 THEN GOTO 860
861
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume8
        IF volume8 > capacidade8 OR volume < 0 THEN GOTO 861
862
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo8$
        IF LEN(conteudo8$) > 10 THEN GOTO 862
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora8%
        GOTO 880
870
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro8 / 2
        capacidade8% = capacidade8
        IF alturamedida = diametro8 GOTO 871
        IF alturamedida = raio GOTO 872
        IF alturamedida > diametro8 OR alturamedida <= 0 THEN GOTO 870
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 873
        IF alturamedida < raio GOTO 874
871
        areatotal = 3.1415 * raio ^ 2
        GOTO 875
872
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 875
873
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 875
874
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 875
875
        volumereal = (areatotal * comprimento8) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
876
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume8 = volumereal: GOTO 880
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 820
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 876
878
        LOCATE 23, 35: INPUT "Diametro :", diametro8
        GOTO 880
879
        LOCATE 23, 33: INPUT "Comprimento :", comprimento8
880
        superficie8 = (volume8 * 20) / (capacidade8 / 2)
        IF superficie8 > 35 THEN superficie8 = 20 - (superficie8 - 20): GOTO 890
        IF superficie8 < 35 THEN superficie8 = 20 + (20 - superficie8)
890
        porcentagem8 = (volume8 * 100) / capacidade8
        OPEN "C:\tanques\tanque8.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade8, volume8, diametro8, comprimento8, superficie8, porcentagem8, conteudo8$
        CLOSE #1
        GOTO 810
895
END SUB

SUB Tanque9 (hora9) STATIC
        IF hora9 <> 0 THEN GOTO 900
        DIM quadrohora9%(0 TO 320)
900
        OPEN "C:\tanques\tanque9.dat" FOR INPUT AS #1
        INPUT #1, capacidade9, volume9, diametro9, comprimento9, superficie9, porcentagem9, conteudo9$
        CLOSE #1
910
        IF hora9 <> 0 THEN GOTO 913
        GET (375, 103)-(567, 127), quadrohora9%
913
        PUT (375, 103), quadrohora9%, OR
        superficieA = superficie9 + 20
        superficieB = superficie9 + 100
Horizontal1 (superficieA)
Horizontal2 (superficieB)
        LOCATE 20, 17: PRINT "TANQUE 9"
915
        LOCATE 3, 48: PRINT USING "Capacidade  : #####.## L  "; capacidade9
        LOCATE 5, 48: PRINT USING "Volume      : #####.## L  "; volume9
        LOCATE 7, 48: PRINT USING "Porcentagem : #####.## %  "; porcentagem9
        LOCATE 9, 62: PRINT "                "
        LOCATE 9, 48: PRINT USING "Conteudo    : &&&&&&&&&&&&&&&"; conteudo9$
        LOCATE 19, 41: PRINT USING "Diametro :###.## M   Compr. :###.## M"; diametro9; comprimento9
        LOCATE 12, 46: PRINT "Ultima alteracao do momento :"
920
        hora9 = hora9 + 2
        LOCATE 22, 3: PRINT "A)Adicionar     B)Retirar     C)Conteudo     D)Alteracao total     Opcao :"
        LOCATE 23, 3: PRINT "E)Tabela/nivel  F)Diametro    G)Comprimento  H)Voltar           "
        LINE (535, 167)-(623, 184), 1, B
        LOCATE 23, 73: INPUT "", tq$
        LOCATE 23, 72: PRINT "   "
925
        LINE (14, 167)-(531, 184), 0, BF
        IF tq$ = "A" OR tq$ = "a" THEN GOTO 930
        IF tq$ = "B" OR tq$ = "b" THEN GOTO 940
        IF tq$ = "C" OR tq$ = "c" THEN GOTO 950
        IF tq$ = "D" OR tq$ = "d" THEN GOTO 960
        IF tq$ = "E" OR tq$ = "e" THEN GOTO 970
        IF tq$ = "F" OR tq$ = "f" THEN GOTO 978
        IF tq$ = "G" OR tq$ = "g" THEN GOTO 979
        IF tq$ = "H" OR tq$ = "h" THEN GOTO 995
        IF tq$ <> "A" OR tq$ <> "a" OR tq$ <> "B" OR tq$ <> "b" OR tq$ <> "C" OR tq$ <> "c" OR tq$ <> "D" OR tq$ <> "d" OR tq$ <> "E" OR tq$ <> "e" OR tq$ <> "F" OR tq$ <> "f" THEN GOTO 920
930
        LOCATE 23, 34: INPUT "Adicionar :", volumeA
        volumeB = volume9 + volumeA
        IF volumeB > capacidade9 OR volumeA < 0 THEN GOTO 925
        volume9 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Adicionou   : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora9%
        GOTO 980
940
        LOCATE 23, 35: INPUT "Retirar :", volumeA
        volumeB = volume9 - volumeA
        IF volumeB < 0 OR volumeA < 0 OR volumeA > volume9 THEN GOTO 925
        volume9 = volumeB
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 41: PRINT USING "       Retirou     : #####.## L      "; volumeA
        GET (375, 103)-(567, 127), quadrohora9%
        GOTO 980
950
        LOCATE 23, 35: INPUT "Conteudo :", conteudo9$
        IF LEN(conteudo9$) > 10 THEN GOTO 925
        GOTO 980
960
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "Capacidade :", capacidade9
        IF capacidade9 <= 0 THEN GOTO 960
961
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "           Volume :", volume9
        IF volume9 > capacidade9 OR volume < 0 THEN GOTO 961
962
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 20: INPUT "                  Conteudo :", conteudo9$
        IF LEN(conteudo9$) > 10 THEN GOTO 962
        LOCATE 14, 55: PRINT TIME$; " hs"
        LOCATE 16, 42: PRINT "           Alteracao total          "
        GET (375, 103)-(567, 127), quadrohora9%
        GOTO 980
970
        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 32: INPUT "Altura medida :", alturamedida
        raio = diametro9 / 2
        IF alturamedida = diametro9 GOTO 971
        IF alturamedida = raio GOTO 972
        IF alturamedida > diametro9 OR alturamedida <= 0 THEN GOTO 970
        ca = ABS(alturamedida - raio)
        co = SQR((raio ^ 2) - (ca ^ 2))
        area1 = co * ca
        area2 = (((ATN(ca / co)) / (3.1415 / 180)) * (3.1415 * raio ^ 2) / 360) * 2
        IF alturamedida > raio GOTO 973
        IF alturamedida < raio GOTO 974
971
        areatotal = 3.1415 * raio ^ 2
        GOTO 975
972
        areatotal = (3.1415 * raio ^ 2) / 2
        GOTO 975
973
        areatotal = area1 + area2 + ((3.1415 * raio ^ 2) / 2)
        GOTO 975
974
        areatotal = ((3.1415 * raio ^ 2) / 2) - (area1 + area2)
        GOTO 975
975
        volumereal = (areatotal * comprimento9) * 1000
        LOCATE 19, 41: PRINT USING "Altura :###.## M   Volume :#####.## L"; alturamedida; volumereal
976

        LOCATE 23, 33: PRINT "                                  "
        LOCATE 23, 25: INPUT "Substituir ?  A)Sim  B)Nao :", subst$
        IF subst$ = "A" OR subst$ = "a" THEN volume9 = volumereal: GOTO 980
        IF subst$ = "B" OR subst$ = "b" THEN GOTO 920
        IF subst$ <> "A" OR subst$ <> "a" OR subst$ <> "B" OR subst$ <> "b" THEN GOTO 976
978
        LOCATE 23, 35: INPUT "Diametro :", diametro9
        GOTO 980
979
        LOCATE 23, 33: INPUT "Comprimento :", comprimento9
980
        superficie9 = (volume9 * 20) / (capacidade9 / 2)
        IF superficie9 > 35 THEN superficie9 = 20 - (superficie9 - 20): GOTO 990
        IF superficie9 < 35 THEN superficie9 = 20 + (20 - superficie9)
990
        porcentagem9 = (volume9 * 100) / capacidade9
        OPEN "C:\tanques\tanque9.dat" FOR OUTPUT AS #1
        PRINT #1, capacidade9, volume9, diametro9, comprimento9, superficie9, porcentagem9, conteudo9$
        CLOSE #1
        GOTO 910
995
END SUB

SUB Vertical (superficieA) STATIC
        LINE (75, 10)-(242, 136), 0, BF
        CIRCLE (130, 20), 52, 1, , , .4 * .42
        CIRCLE (130, 90), 52, 1, 52 * (3.14 / 180), 44 * (3.14 / 180), .4 * .42
        LINE (78, 20)-(78, 91), 1
        LINE (80, 91)-(116, 110), 1
        LINE (116, 110)-(116, 125), 1
        LINE (180, 92)-(145, 110), 1
        LINE (145, 110)-(145, 125), 1
        LINE (182, 20)-(182, 91), 1
        LINE (165, 15)-(165, 84), 1, , &HFF10
        LINE (165, 84)-(135, 107), 1, , &HFF10
        CIRCLE (130, 110), 14, 1, , , .5 * .42
        CIRCLE (130, 126), 14, 1, , , .5 * .42
        CIRCLE (130, superficieA), 52, 1, 316 * (3.14 / 180), 308 * (3.14 / 180), .4 * .42
        CIRCLE (130, superficieA), 52, 0, 200 * (3.14 / 180), 205 * (3.14 / 180), .4 * .42
        CIRCLE (130, superficieA), 52, 0, 335 * (3.14 / 180), 340 * (3.14 / 180), .4 * .42
        LINE (129, 25)-(131, 113), 0, BF
        CIRCLE (130, 118), 14, 1, , , .5 * .42
        PAINT (130, 118), 1
        LINE (105, 117)-(142, 119), 1, BF
        CIRCLE (105, 118), 4, 1, , , 3 * .42
        PAINT (104, 118), 1
        CIRCLE (130, superficieA), 52, 1, 0, 180 * (3.14 / 180), .4 * .42
        CIRCLE (130, 90), 52, 1, 180 * (3.14 / 180), 360 * (3.14 / 180), .4 * .42
        PAINT (130, 110), CHR$(85)
        PAINT (132, superficieA), CHR$(85)
        LINE (190, 20)-(190, 90), 1
        FOR x = 20 TO 90 STEP 5
        LINE (190, x)-(195, x), 1
        NEXT x
        LOCATE 3, 26: PRINT "100 %"
        LOCATE 12, 26: PRINT "0 %"
        PSET (170, 110), 1
        DRAW "TA0 45G10 R7 D7 R7 U7 R7 H10"
        LOCATE 17, 23: PRINT "Residual"
END SUB

