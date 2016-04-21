algoritmo "Cadastro de clientes em Hotel"
//Trabalho de Logica de Programação
// Função : Cadastrar, Mostrar dados de clientes já cadastrados, Liberar quarto quando cliente encerrar sua estadia,
//           Visualizar quartos vagos e oculpados no Hotel.
// Autores : Luis Cláudio da Silva Fernandes
//           Keith Narjara de Lima Fernandes
// Data : 15/05/2013
// Seção de Declarações
var
nome,quarto,Y,esc,page:caractere
idade,cpf,dias,valor:real
tipo,est,Z,D,cons: caractere
A,B,C,T,L,op8,op9: inteiro
op,op1,op2,op3,op4,op5,op6,op7: caractere
estilo: logico
sessao,sessao1,sessao2,sessao3: logico
menu,menu2,menu3: logico
AT,AL,BT,BL,CT,CL,DT,DL,pag:inteiro
//variaveis do vetor
estvet: vetor [1..5] de inteiro
linha: inteiro
//variaveis das matrizes
matriz : vetor [1..2,1..7] de caractere
matrizA : vetor [1..2,1..7] de real
matrizB: vetor [1..2,1..7] de caractere
matrizC : vetor [1..2,1..7] de real
matrizD : vetor [1..2,1..7] de caractere
matrizE: vetor [1..2,1..7] de real
i,j : inteiro

procedimento OPCAO5
inicio

escreval("                         ---------------------------               ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |               ")
escreval("                         ---------------------------               ")
escreval("                                                                   ")
escreval("              -----------------------------------------------------")
escreval("                      -----Dados do novo cliente-----              ")
escreval("              -----------------------------------------------------")
escreval("                  -Nome                : ",nome,"                  ")
escreval("                  -Idade               :",idade,"                  ")
escreval("                  -Tipo de quarto      : ",tipo,"                  ")
escreval("                  -Quantidade de dias  :",dias,"                   ")
escreval("                  -Forma de pagamento  : ",page,"                  ")
escreval("                  -Valor da hospedagem : R$",valor,",00            ")
escreval("              -----------------------------------------------------")
escreval ("")
escreval ("Aperte ENTER para continuar.")
leia (Z)

fimprocedimento

procedimento OPCAO4
inicio

escreval("                                                                            ")
escreval("                         +-------------------------+                        ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                        ")
escreval("                         +-------------------------+                        ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("            +-------------------------------------------------------+")
escreval("            |(R) -> Para RESERVAR um quarto                         |")
escreval("            |(L) -> Para LIBERAR um quarto                          |")
escreval("            |(D) -> Para mostrar os DADOS do cliente                |")
escreval("            |(M) -> Para mostrar as QUANTIDADES de quartos no hotel |")
escreval("            |(S) -> Para SAIR                                       |")
escreval("            +-------------------------------------------------------+")
leia (esc)
limpatela

enquanto ((esc<>"R") e (esc<>"L") e (esc<>"D") e (esc<>"M") e (esc<>"S")) faca
   escreval("Sintaxe Incorreta!")
   escreval("Aperte ENTER para voltar ao MENU")
   leia(Z)
   limpatela
   OPCAO4
fimenquanto

fimprocedimento

procedimento OPCAO1
inicio
escreval ("-- Quantidade de quarto indisponível")
escreval ("-- Deseja escolher outro quarto? (Sim/Nao)")
leia (op2)
limpatela
se ((op2<>"sim") e (op2<>"nao")) entao
   repita
      escreval ("  --Sintaxe incorreta!")
      escreval ("  --Digite Sim/Nao")
      leia (op2)
      limpatela
   ate ((op2="sim") ou (op2="nao"))
fimse

se (op2="sim") entao
   OPQUARTO3 //procedimento
   limpatela
senao
   se (op2="nao") entao
      escreval ("Pedido de quarto encerrado pelo cliente.")
   fimalgoritmo
fimse
fimse
fimprocedimento

procedimento OPQUARTO
inicio
escreval("|-----------------------------------------------------------------------|")
escreval("|----------------------- *OPÇÕES DE QUARTOS* ---------------------------|")
escreval("|-----------------------------------------------------------------------|")
escreval("|        QUARTO        |        ESTILO        |        VALOR/DIA        |")
escreval("|-----------------------------------------------------------------------|")
escreval("||      Solteiro       |     Tradicional      |        R$ 50,00        ||")
escreval("||       Casal         |     Tradicional      |        R$ 100,00       ||")
escreval("||      Família        |     Tradicional      |        R$ 150,00       ||")
escreval("|-----------------------------------------------------------------------|")
escreval("|-----------------------------------------------------------------------|")
escreval("")
escreval("  |-------------------------------------------------------------------|")
escreval("  |\\ >OBS.:                                                        \\|")
escreval("  |\\ Existe a opção 'quarto de luxo' para os quartos de casal e    \\|")
escreval("  |\\ família que será somado um valor de R$ 50,00 para cada quarto.\\|")
escreval("  |-------------------------------------------------------------------|")
escreval("")
escreval("    |--------------------------------------------------------------|")
escreval("     -Deseja confimar o seu pedido do quarto de solteiro? (sim/nao)")
escreval("     > Sim - Para continuar com o pedido.")
escreval("     > Não - Para escolher novamente o tipo de quarto.")
escreval("    |--------------------------------------------------------------|")
leia(op6)
limpatela

se ((op6<>"sim") e (op6<>"nao")) entao
repita
   escreval ("--Sintaxe incorreta!")
   escreval ("--Digite (Sim/Nao)")
   leia (op6)
   limpatela
ate ((op6="sim") ou (op6="nao"))
fimse

se (op6="sim") entao
senao
se (op6="nao") entao
   limpatela
   OPQUARTO3
fimse
fimse

limpatela
fimprocedimento

procedimento OPQUARTO2
inicio
escreval("|-----------------------------------------------------------------------|")
escreval("|----------------------- *OPÇÕES DE QUARTOS* ---------------------------|")
escreval("|-----------------------------------------------------------------------|")
escreval("|        QUARTO        |        ESTILO        |        VALOR/DIA        |")
escreval("|-----------------------------------------------------------------------|")
escreval("||      Solteiro       |     Tradicional      |        R$ 50,00        ||")
escreval("||       Casal         |     Tradicional      |        R$ 100,00       ||")
escreval("||      Família        |     Tradicional      |        R$ 150,00       ||")
escreval("|-----------------------------------------------------------------------|")
escreval("|-----------------------------------------------------------------------|")
escreval("")
escreval("  |-------------------------------------------------------------------|")
escreval("  |\\ >OBS.:                                                        \\|")
escreval("  |\\ Existe a opção 'quarto de luxo' para os quartos de casal e    \\|")
escreval("  |\\ família que será somado um valor de R$ 50,00 para cada quarto.\\|")
escreval("  |-------------------------------------------------------------------|")
escreval("")
escreval("    |--------------------------------------------------------------|")
escreval("    |             Escolha o estilo de quarto desejado:             |")
escreval("    |--------------------------------------------------------------|")
escreval("    |                      >>Tradicional (T)                       |")
escreval("    |                      >>Luxo        (L)                       |")
escreval("    |--------------------------------------------------------------|")

leia (est)
limpatela
fimprocedimento

procedimento OPQUARTO3
inicio

escreval("        |-------------------------------------------------------------|")
escreval("        |                    PEDIDO DE HOSPEDAGEM                     |")
escreval("        |-------------------------------------------------------------|")
escreval("        |              Qual o tipo de quarto desejado:                |")
escreval("        |-------------------------------------------------------------|")
escreval("        |> A- Quarto de solteiro                                      |")
escreval("        |> B- Quarto para casal                                       |")
escreval("        |> C- Quarto para família                                     |")
escreval("        |-------------------------------------------------------------|")
escreval ("")
escreva ("Digite a opção desejada: ")
leia (tipo)
fimprocedimento

inicio
// Seção de Comandos

//valores para os tipos de quartos
A <- 4  //quarto solteiro
B <- 5  //quarto casal
C <- 5  //quarto familia


//valores para estilo de quarto
//vetor
estvet [2] <- 3 //casal tradicional
estvet [3] <- 2 //casal luxo

estvet [4] <- 3 //familia tradicional
estvet [5] <- 2 //familia luxo

para i de 1 ate 2 faca
para j de 1 ate 7 faca

   escreval("  +___________________________________________________________________________+")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                         ---------------------------                       |")
   escreval("  |                         | >>> *HOTEL MAR&SOL* <<< |                       |")
   escreval("  |                         ---------------------------                       |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  |                                                                           |")
   escreval("  +___________________________________________________________________________+")
   escreval("")
   escreval("")
   escreval("BEM VINDO")
   escreval("Aperte ENTER para acessar o menu de opções")
   escreval("")
   leia (Z)
   limpatela


   OPCAO4 //procedimento

   sessao3 <- verdadeiro
   enquanto (sessao3 = verdadeiro) faca

      escolha esc

      caso "D" //dados do cliente
         se matriz[i,j]="" entao
            escreval("                     ----------------------------------")
            escreval("                     ----Nenhum cliente cadastrado.----")
            escreval("                     ----------------------------------")
            escreval("")
            escreval("")
         fimse
         OPCAO5

         escreval ("|---------------------------|")
         escreval ("|Digite a opção desejada:   |")
         escreval ("|                           |")
         escreval ("|> 1- Para voltar ao MENU   |")
         escreval ("|> 2- Para sair             |")
         escreval ("|---------------------------|")
         leia(A)
         limpatela

         se (A=1) entao
            OPCAO4
         senao
            se (A=2) entao
               limpatela
               escreval("")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                         ---------------------------                          ")
               escreval("                         | >>> *HOTEL MAR&SOL* <<< |                          ")
               escreval("                         ---------------------------                          ")
               escreval("                                                                              ")
            fimalgoritmo
         senao
            repita
               escreval("--Sintaxe incorreta!")
               escreval("--Digite (1 ou 2)")
               leia(A)
               limpatela
            ate ((A=1) ou (i=2))
         fimse
      fimse

   caso "L" // liberar quarto

      escreval ("Escolha um quarto para desocupar.")
      escreval ("")
      escreval ("|X| - Ocupado")
      escreval ("|O| - Vago")
      escreval ("_________________________________________________")
      escreval ("A1- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
      escreval ("_________________________________________________")

      para i de 1 ate 2 faca
         para j de 1 ate 7 faca

            se (matriz[i,j] = "") entao

               matriz[i,j] <- ""
            senao
               matriz[i,j] <- "   |X|  "
            fimse

            escreva (matriz[i,j]:7)
         fimpara
         escreval ("")
         escreval ("_________________________________________________")
      fimpara

      escreval ("A2- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
      escreval ("_________________________________________________")

      escreval ("Digite o andar")
      leia (i)

      se ((i<1) ou (i>2)) entao
         repita
            limpatela
            escreval("---------------------------------------  ")
            escreval("            ----*ATENÇÃO*----            ")
            escreval("---Existem apenas 2 andares no hotel---  ")
            escreval("---------------------------------------  ")
            escreval("            | Digite 1 ou 2 |            ")
            escreval("---------------------------------------  ")
            escreval("")
            leia (i)
            limpatela
         ate ((i=1) ou (i=2))
      fimse

      escreval ("Digite o número do quarto do ",i,"° andar:")
      leia (j)
      limpatela

      se ((j<1) ou (j>7)) entao
         repita
            limpatela
            escreval("---------------------------------------  ")
            escreval("            ----*ATENÇÃO*----            ")
            escreval("----- Existem apenas 7 quartos em -----  ")
            escreval("-----------cada andar no hotel---------  ")
            escreval("---------------------------------------  ")
            escreval("             | Digite 1 até 7 |          ")
            escreval("---------------------------------------  ")
            escreval("")
            leia(j)
            limpatela
         ate ((j>=1) ou (j<=7))
      fimse

      escolha matriz[i,j]

      caso ""
         escreval ("---------------------------------------")
         escreval ("---------- Dados verificados ----------")
         escreval ("---------------------------------------")
         escreval ("Quarto(",i,",",j,") já está vago!")
         escreval ("")
         escreval ("|X| - Ocupado")
         escreval ("|O| - Vago")
         escreval ("A1- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
         escreval ("_________________________________________________")


         para i de 1 ate 2 faca
            para j de 1 ate 7 faca

               se (matriz[i,j] = "") entao

                  matriz[i,j] <- ""
               senao
                  matriz[i,j] <- "   |X|  "
               fimse

               escreva (matriz[i,j]:7)
            fimpara
            escreval ("")
            escreval ("_________________________________________________")
         fimpara

         escreval ("A2- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
         escreval ("_________________________________________________")

      escreval ("|---------------------------|")
      escreval ("|Digite a opção desejada:   |")
      escreval ("|                           |")
      escreval ("|> 1- Para voltar ao MENU   |")
      escreval ("|> 2- Para sair             |")
      escreval ("|---------------------------|")
         leia(op9)

         se (op9=1) entao
            limpatela
            OPCAO4

         senao
            se (op9=2) entao
               limpatela
               escreval("")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                                                                              ")
               escreval("                         ---------------------------                          ")
               escreval("                         | >>> *HOTEL MAR&SOL* <<< |                          ")
               escreval("                         ---------------------------                          ")
               escreval("                                                                              ")
            fimalgoritmo
         senao
            repita
               escreval("--Sintaxe incorreta!")
               escreval("--Digite (1 ou 2)")
               leia(op9)
               limpatela
            ate ((op9=1) ou (op9=2))
         fimse
      fimse

   outrocaso

      matriz  [i,j] <- ""
      matrizA [i,j] <- 0
      matrizB [i,j] <- ""
      matrizC [i,j] <- 0
      matrizD [i,j] <- ""
      matrizE [i,j] <- 0

      escreval("--------------------------------------")
      escreval("-----Dados excluidos com sucesso!-----")
      escreval("--------------------------------------")
      escreval("Quarto",j," do ",i,"° andar agora está vago.")

      escreval ("|X| - Ocupado")
      escreval ("|O| - Vago")
      escreval ("A1- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
      escreval ("_________________________________________________")
      para i de 1 ate 2 faca
         para j de 1 ate 7 faca
            se (matriz[i,j] = "") entao
               matriz[i,j] <- ""
            fimse

            escreva (matriz[i,j]:7)
         fimpara
         escreval("")
      fimpara
      escreval ("A2- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
      escreval ("_________________________________________________")

      escreval ("|---------------------------|")
      escreval ("|Digite a opção desejada:   |")
      escreval ("|                           |")
      escreval ("|> 1- Para voltar ao MENU   |")
      escreval ("|> 2- Para sair             |")
      escreval ("|---------------------------|")
      leia(op9)

      se (op9=1) entao
         limpatela
         OPCAO4

      senao
         se (op9=2) entao
            limpatela
            escreval("")
            escreval("                                                                              ")
            escreval("                                                                              ")
            escreval("                                                                              ")
            escreval("                                                                              ")
            escreval("                                                                              ")
            escreval("                                                                              ")
            escreval("                                                                              ")
            escreval("                                                                              ")
            escreval("                         ---------------------------                          ")
            escreval("                         | >>> *HOTEL MAR&SOL* <<< |                          ")
            escreval("                         ---------------------------                          ")
            escreval("                                                                              ")
         fimalgoritmo
      senao
         repita
            escreval("--Sintaxe incorreta!")
            escreval("--Digite (1 ou 2)")
            leia(op9)
            limpatela
         ate ((op9=1) ou (op9=2))
      fimse
   fimse
fimescolha

caso "S"   // S -- sair
limpatela
escreval("")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                         ---------------------------                          ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                          ")
escreval("                         ---------------------------                          ")
escreval("                                                                              ")
fimalgoritmo

caso "M"  // M -- mostrar quartos disponibilidade dos quartos
escreval("                                                                            ")
escreval("                         ---------------------------                        ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                        ")
escreval("                         ---------------------------                        ")
escreval("                                                                            ")
escreval("   -------------------------------------------------------------------------")
escreval("   |                      ** Consulta de quartos **                       |")
escreval("   -------------------------------------------------------------------------")
escreval("")
escreval("Consultar quartos disponiveis? (sim/nao)")
leia (op7)

escolha  op7
caso "sim" // M 1
escreval ("--Disponibilidade de quartos")
escreval ("-------------------------------------------------------------------------")
escreval ("|X| - Ocupado")
escreval ("|O| - Vago")
escreval ("_________________________________________________")
escreval ("A1- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
escreval ("_________________________________________________")

para i de 1 ate 2 faca
   para j de 1 ate 7 faca

      se (matriz[i,j] = "") entao

         matriz[i,j] <- ""
      senao
         matriz[i,j] <- "   |X| |"
      fimse

      escreva (matriz[i,j]:7)
   fimpara
   escreval ("")
   escreval ("_________________________________________________")
fimpara

escreval ("A2- 1 ____ 2 ____ 3 ____ 4 ____ 5 ____ 6 ____ 7  ")
escreval ("_________________________________________________")

escreval ("---------------------------------------------------------------------------")
escreval ("|-Restam ",A," quarto(s) 'tipo solteiro'.                                  ")
escreval ("|-Restam ",estvet [2]," quarto(s) tipo 'casal tradicionail' disponíveis.   ")
escreval ("|-Restam ",estvet [3]," quarto(s) tipo 'casal luxo' disponíveis.           ")
escreval ("|-Restam ",estvet [4]," quarto(s) tipo 'familia tradicionail' disponíveis. ")
escreval ("|-Restam ",estvet [5]," quarto(s) tipo 'familia luxo' disponíveis.         ")
escreval ("---------------------------------------------------------------------------")
escreval
escreval ("|---------------------------|")
escreval ("|Digite a opção desejada:   |")
escreval ("|                           |")
escreval ("|> 1- Para voltar ao MENU   |")
escreval ("|> 2- Para sair             |")
escreval ("|---------------------------|")
leia(op8)

se (op8=2) entao  // M 1-2
   limpatela
   escreval("")
   escreval("                                                                              ")
   escreval("                                                                              ")
   escreval("                                                                              ")
   escreval("                                                                              ")
   escreval("                                                                              ")
   escreval("                                                                              ")
   escreval("                                                                              ")
   escreval("                                                                              ")
   escreval("                         ---------------------------                          ")
   escreval("                         | >>> *HOTEL MAR&SOL* <<< |                          ")
   escreval("                         ---------------------------                          ")
   escreval("                                                                              ")
fimalgoritmo

senao
se (op8=1) entao
   OPCAO4

senao
   se ((op8<>1) e (op8<>2)) entao
      repita
         escreval("--Sintaxe incorreta!")
         escreval("--Digite (1 ou 2)")
         leia(op8)
      ate ((op8=1) ou (op8=2))
   fimse
fimse
fimse

caso "nao" //M 2
escreval ("|---------------------------|")
escreval ("|Digite a opção desejada:   |")
escreval ("|                           |")
escreval ("|> 1- Para voltar ao MENU   |")
escreval ("|> 2- Para sair             |")
escreval ("|---------------------------|")
leia(op8)

se (op8=2) entao  // M 2-1
limpatela
escreval("")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                         ---------------------------                          ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                          ")
escreval("                         ---------------------------                          ")
escreval("                                                                              ")
fimalgoritmo

senao
se (op8=1) entao
OPCAO4

senao
se ((op8<>1) e (op8<>2)) entao
   repita
      escreval("--Sintaxe incorreta!")
      escreval("--Digite (1 ou 2)")
      leia(op8)
   ate ((op8=1) ou (op8=2))
fimse
fimse
fimse

outrocaso
repita
escreval("--Sintaxe incorreta!")
escreval("--Digite (sim/nao)")
leia(op7)
ate ((op7="sim") ou (op7="nao"))

fimescolha

caso "R" // R -- cadastrar
escreval("                                                                            ")
escreval("                         ---------------------------                        ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                        ")
escreval("                         ---------------------------                        ")
escreval("                                                                            ")
escreval("   -------------------------------------------------------------------------")
escreval("   |                      ** Cadastro de clientes **                       |")
escreval("   -------------------------------------------------------------------------")
escreval("")
sessao3 <- falso

fimescolha
fimenquanto

// atendimento antes do cadastro

menu2 <- verdadeiro //voltar para menu caso idade menor que 18
repita
sessao <- verdadeiro
enquanto (sessao=verdadeiro) faca
OPQUARTO3  //procedimento

limpatela
repita
se ((tipo<>"A") e (tipo<>"B") e (tipo<>"C")) entao
repita
escreval("Sintaxe incorreta.")
escreval ("")
escreval("|-------------------------------|")
escreval("|Digite:                        |")
escreval("|                               |")
escreval("|> A- Para quarto tipo solteiro |")
escreval("|> B- Para quarto tipo casal    |")
escreval("|> C- Para quarto tipo família  |")
escreval("|-------------------------------|")

leia(tipo)
limpatela
ate ((tipo="A") ou (tipo="B") ou (tipo="C"))
fimse

//se quarto de solteiro for igual a zero
se ((tipo="A") e (A=0))  entao
OPCAO1 //procedimento
Y <- "Y"
fimse

//se quarto de casal for igual a zero
se ((tipo="B") e (B=0))  entao
//procedimento
OPCAO1
Y <- "Y"
fimse

//se quarto de familia for igual a zero
se ((tipo="C") e (C=0))  entao
//procedimento
OPCAO1
Y <- "Y"
fimse

se (tipo="A") e (A>0)  entao
escreval (">QUARTO DISPONÍVEL")
escreval ("")
OPQUARTO
est <- "A"
Y <- "X"
A <- A-1
valor <- 50
fimse

se (tipo="B") e (B>0)  entao
escreval (">QUARTO DISPONÍVEL")
escreval ("")
OPQUARTO2 //procedimento
Y <- "X"
fimse

se (tipo="C") e (C>0)  entao
escreval (">QUARTO DISPONÍVEL")
escreval ("")
OPQUARTO2
Y <- "X"


fimse

ate ((Y<>"Y")ou(op6="ok"))
sessao <- falso
fimenquanto

//estilo de quarto
escolha est
caso "A"

caso "T"
// casal tradicional igual a zero
se ((tipo="B") e (estvet [2]=0)) entao
escreval (">>Não temos quarto disponível!")
escreval ("Deseja escolher o quarto de luxo? (Sim/Nao)")
leia (op3)
se (op3="sim") entao
limpatela
fimse
se (op3="nao") entao
escreval ("Pedido de quarto encerrado pelo cliente.")
fimalgoritmo
fimse
fimse

// casal tradicional maior que zero
se ((tipo="B") e (estvet [2]>0)) entao
escreval (">QUARTO DISPONÍVEL")
B <- B-1
estvet [2] <- estvet [2]-1
valor <- 100
fimse

//familia tradicional igual a zero
se ((tipo="C") e (estvet [4]=0)) entao
escreval (">>Não temos quarto disponível!")
escreval ("Deseja escolher o quarto de luxo? (Sim/Nao)")
leia (op3)
se (op3="sim") entao
limpatela
fimse
se (op3="nao") entao
escreval ("Pedido de quarto encerrado pelo cliente.")
fimalgoritmo
fimse
fimse

//familia tradicional maior que zero
se ((tipo="C") e (estvet [4]>0)) entao
escreval (">QUARTO DISPONÍVEL")
C <- C-1
estvet [4] <- estvet [4]-1
valor <- 150
fimse

caso "L"

// casal luxo igual a zero
se ((tipo="B") e (estvet [3]=0)) entao
escreval (">>Não temos quarto disponível!")
escreval ("Deseja escolher o quarto tradicional? (Sim/Nao)")
leia (op3)
se (op3="sim") entao
limpatela
fimse
se (op3="nao") entao
escreval ("Pedido de quarto encerrado pelo cliente.")
fimalgoritmo
fimse
fimse

// casal luxo maior que zero
se ((tipo="B") e (estvet [3]>0)) entao
escreval (">QUARTO DISPONÍVEL")
B <- B-1
estvet [3] <- estvet [3]-1
valor <- 150
fimse

//familia luxo igual a zero
se ((tipo="C") e (estvet [5]=0)) entao
escreval (">>Não temos quarto disponível!")
escreval ("Deseja escolher o quarto tradicional? (Sim/Nao)")
leia (op3)
se (op3="sim") entao
limpatela
fimse
se (op3="nao") entao
escreval ("Pedido de quarto encerrado pelo cliente.")
fimalgoritmo
fimse
fimse

//familia luxo maior que zero
se ((tipo="C") e (estvet [5]>0)) entao
escreval (">QUARTO DISPONÍVEL")
C <- C-1
estvet [5] <- estvet [5]-1
valor <- 200
fimse

outrocaso
repita
escreval ("Sintaxe incorreta! Digite T ou L.")
leia(est)
ate ((est="T") ou (est="L"))
fimescolha

//nome do cliente
escreval("                         ---------------------------                  ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                  ")
escreval("                         ---------------------------                  ")
escreval("                                                                      ")
escreval("                                                                            ")
escreval("   -------------------------------------------------------------------------")
escreval("   |                      ** Cadastro de clientes **                       |")
escreval("   -------------------------------------------------------------------------")
escreval("")
escreva ("   ---Digite o nome do cliente:  ")
leia(nome)

enquanto (nome = "") faca
escreval("   ++ Campo obrigatório! ++")
leia(nome)
fimenquanto
escreval("")

//idade do cliente
escreva ("   ---Digite a idade do cliente: ")
escreval("   |----------------------------------------------------|")
escreval("   |OBS.:                                               |")
escreval("   |     'MENORES DE 18 ANOS SÓ PODERÃO SE HOSPEDAR     |")
escreval("   | NO HOTEL COM A PRESENÇA DOS PAIS COM DOCUMENTAÇÃO' |")
escreval("   |----------------------------------------------------|")
leia(idade)

se (idade < 18) entao
escreval("   -- ATENÇÃO --")
escreval("   -- ATENÇÃO --")
escreval("   |-------------------------------------------------------------|")
escreval("   |DESCULPE!                                                    |")
escreval("   |\\MENORES DE 18 ANOS NÃO PODEM SE HOSPEDAR NO HOTEL, SOMENTE |")
escreval("   |\\COM A PRESENÇA DOS PAIS COM DOCUMENTAÇÃO.                  |")
escreval("   |-------------------------------------------------------------|")
escreval("   Deseja finalizar o cadastro? (sim/nao)")
leia(op5)

se (op5="sim") entao
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("   ------------------------------------------------------------")
escreval("                 ## Cadastro finalizado ##")
escreval("   ------------------------------------------------------------")
fimalgoritmo
fimse

se (op5="nao") entao
escreval("   Recomeçar pedido de quarto")
escreval("   --APERTE ENTER PARA VOLTAR AO MENU--")
leia(Z)
limpatela
fimse
fimse

ate (idade>=18)
fimrepita

se (idade >= 18) entao
fimse
escreval("")

//dias no hotel
escreval("   ---Digite a quantidade de dias que o cliente vai ficar no Hotel: ")
leia(dias)
escreval("")

//forma de pagamento
escreval("-----------------------------------")
escreval("|--Escolha a forma de pagamento:--|")
escreval("|                                 |")
escreval("|  > 1 - Dinheiro                 |")
escreval("|  > 2 - Cartão de crédito        |")
escreval("|  > 3 - Cheque                   |")
escreval("-----------------------------------")
leia(pag)
limpatela

se pag = 1 entao
page <- "Dinheiro"
sessao <- falso
senao
se (pag=2) entao
page <- "Cartão de crédito"
sessao <- falso
senao
se (pag=3) entao
page <- "Cheque"
sessao <- falso
senao
se ((pag<>1)e(pag<>2)e(pag<>3)) entao
repita
escreval ("--Sintaxe Incorreta!")
escreval ("--Tente novamente.")
ate ((pag=1) ou (pag=2) ou (pag=3))
fimse
fimse
fimse
fimse

se (tipo="A") entao
tipo <- "Solteiro"
fimse
se (tipo="B") entao
tipo <- "Casal"
fimse
se (tipo="C") entao
tipo <- "Família"
fimse

matriz  [i,j] <- nome
matrizA [i,j] <- idade
matrizB [i,j] <- tipo
matrizC [i,j] <- dias
matrizD [i,j] <- page
matrizE [i,j] <- valor

//consultar dados
sessao1 <- verdadeiro
enquanto (sessao1=verdadeiro) faca
escreval (nome," você deseja consultar os seus dados? (sim/nao)")
leia(cons)

se (cons="sim") entao
OPCAO5
limpatela

escreval("                                                                            ")
escreval("                         ---------------------------                        ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                        ")
escreval("                         ---------------------------                        ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("   -------------------------------------------------------------------------")
escreval("   |                      ** Cadastro de clientes **                       |")
escreval("   -------------------------------------------------------------------------")
escreval("")
escreval("")
escreval("                     +___________________________________+")
escreval("                      | Cliente cadastrado com sucesso! | ")
escreval("   -------------------------------------------------------------------------")
sessao1 <- falso
senao

se (cons = "nao") entao
limpatela
escreval("                                                                            ")
escreval("                         ---------------------------                        ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                        ")
escreval("                         ---------------------------                        ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("                                                                            ")
escreval("   -------------------------------------------------------------------------")
escreval("   |                      ** Cadastro de clientes **                       |")
escreval("   -------------------------------------------------------------------------")
escreval("")
escreval("")
escreval("                     +___________________________________+")
escreval("                      | Cliente cadastrado com sucesso! | ")
escreval("   -------------------------------------------------------------------------")
escreval("  ______________________________")
escreval ("| Aperte ENTER para continuar. |")
escreval(" |______________________________|")
leia(Z)
sessao1 <- falso

fimse
fimse

fimenquanto
// cadastrar novo cliente
escreval ("|---------------------------|")
escreval ("|Digite a opção desejada:   |")
escreval ("|                           |")
escreval ("|> 1- Voltar a tela INICIAL |")
escreval ("|> 2- Para sair             |")
escreval ("|---------------------------|")
leia(A)
limpatela
se (A=1) entao

senao
se (A=2) entao
limpatela
escreval("")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                                                                              ")
escreval("                         ---------------------------                          ")
escreval("                         | >>> *HOTEL MAR&SOL* <<< |                          ")
escreval("                         ---------------------------                          ")
escreval("                                                                              ")
fimalgoritmo
senao
repita
escreval("Sintaxe incorreta!")
escreval("Digite (1 ou 2)")
leia(A)
limpatela
ate ((A=1) ou (i=2))
fimse
fimse


fimpara
fimpara
fimalgoritmo

