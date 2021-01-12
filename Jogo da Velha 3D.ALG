Algoritmo "jogo da velha"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Autor     : Matheus
// Data atual  : 29/09/2018
Var
// Seção de Declarações das variáveis
nova_partida,player1,player2,tipo_partida,babaca:caractere
escolhida,fim,v1,v2,partida,jogadas,contador,cont,n,contp,ativa_3D,WGB,load,dificuldade,aleatorion:inteiro
vetor_marcado:vetor[1..9]de caractere
posicao:vetor[1..9]de inteiro
fim_analize,cheat:logico
p_usada:vetor[1..9]de logico

////////////////////////// INSTALANDO 3D ////////////////////////////////
procedimento tela_load()
inicio
se (cont=0)entao
     escreval("==================================================================")
     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")
     escreval("                   \      \      \      \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
     escreval("")
fimse

se (cont=1)entao
     escreval("==================================================================")
     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")
     escreval("                \      \      \      \  /  \  /")
     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")
     escreval("                   \      \      \      \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
     escreval("")
fimse

se (cont=2)entao
     escreval("==================================================================")
     escreval("            /______/______/______/    \/    \/    \")
     escreval("            \      \      \      \    /\    /\    /")
     escreval("             \      \      \      \  /  \  /  \  /")
     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")
     escreval("                \      \      \      \  /  \  /")
     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")
     escreval("                   \      \      \      \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
     escreval("")
fimse

se (cont=3)entao
     escreval("==================================================================")
     escreval("               /______/______/______/    \/    \")
     escreval("              /      /      /      /\    /\    /\")
     escreval("             /      /      /      /  \  /  \  /  \")
     escreval("            /______/______/______/    \/    \/    \")
     escreval("            \      \      \      \    /\    /\    /")
     escreval("             \      \      \      \  /  \  /  \  /")
     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")
     escreval("                \      \      \      \  /  \  /")
     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")
     escreval("                   \      \      \      \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
fimse

se (cont=4)entao
     escreval("==================================================================")
     escreval("                  /______/______/______/    \")
     escreval("                 /      /      /      /\    /\")
     escreval("                /      /      /      /  \  /  \")
     escreval("               /______/______/______/    \/    \")
     escreval("              /      /      /      /\    /\    /\")
     escreval("             /      /      /      /  \  /  \  /  \")
     escreval("            /______/______/______/    \/    \/    \")
     escreval("            \      \      \      \    /\    /\    /")
     escreval("             \      \      \      \  /  \  /  \  /")
     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")
     escreval("                \      \      \      \  /  \  /")
     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")
     escreval("                   \      \      \      \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
fimse

se (cont=5)entao
     escreval("==================================================================")
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /      /      /      /  \")
     escreval("                  /______/______/______/    \")
     escreval("                 /      /      /      /\    /\")
     escreval("                /      /      /      /  \  /  \")
     escreval("               /______/______/______/    \/    \")
     escreval("              /      /      /      /\    /\    /\")
     escreval("             /      /      /      /  \  /  \  /  \")
     escreval("            /______/______/______/    \/    \/    \")
     escreval("            \      \      \      \    /\    /\    /")
     escreval("             \      \      \      \  /  \  /  \  /")
     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")
     escreval("                \      \      \      \  /  \  /")
     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")
     escreval("                   \      \      \      \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
fimse

se (cont=6)entao
     escreval("==================================================================")
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /      /  P2  /      /  \")
     escreval("                  /______/______/______/ P  \")
     escreval("                 /      /      /      /\  3 /\")
     escreval("                /  P4  /  P5  /  P6  /  \  /  \")
     escreval("               /______/______/______/ P  \/ P  \")
     escreval("              /      /      /      /\  2 /\  6 /\")
     escreval("             /      /  P8  /      /  \  /  \  /  \")
     escreval("            /______/______/______/ P  \/    \/ P  \")
     escreval("            \      \      \      \  1 /\    /\  9 /")
     escreval("             \  P1  \      \  P3  \  /  \  /  \  /")
     escreval("              \______\______\______\/ P  \/ P  \/")
     escreval("               \      \      \      \  4 /\  8 /")
     escreval("                \      \  P5  \      \  /  \  /")
     escreval("                 \______\______\______\/ P  \/")
     escreval("                  \      \      \      \  7 /")
     escreval("                   \  P7  \      \  P9  \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
fimse

se (cont=7)entao
     escreval("==================================================================")
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /  P1  /  P2  /  P3  /  \")
     escreval("                  /______/______/______/ P  \")
     escreval("                 /      /      /      /\  3 /\")
     escreval("                /  P4  /      /  P6  /  \  /  \")
     escreval("               /______/______/______/    \/    \")
     escreval("              /      /      /      /\    /\    /\")
     escreval("             /  P7  /  P8  /  P9  /  \  /  \  /  \")
     escreval("            /______/______/______/ P  \/ P  \/ P  \")
     escreval("            \      \      \      \  1 /\  5 /\  9 /")
     escreval("             \      \  P2  \      \  /  \  /  \  /")
     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")
     escreval("                \  P4  \  P5  \  P6  \  /  \  /")
     escreval("                 \______\______\______\/ P  \/")
     escreval("                  \      \      \      \  7 /")
     escreval("                   \      \  P8  \      \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
fimse

se (cont=8)entao
     escreval("==================================================================")
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /  P1  /      /  P3  /  \")
     escreval("                  /______/______/______/    \")
     escreval("                 /      /      /      /\    /\")
     escreval("                /      /  P5  /      /  \  /  \")
     escreval("               /______/______/______/ P  \/ P  \")
     escreval("              /      /      /      /\  2 /\  6 /\")
     escreval("             /  P7  /      /  P9  /  \  /  \  /  \")
     escreval("            /______/______/______/    \/ P  \/    \")
     escreval("            \      \      \      \    /\  5 /\    /")
     escreval("             \  P1  \  P2  \  P3  \  /  \  /  \  /")
     escreval("              \______\______\______\/ P  \/ P  \/")
     escreval("               \      \      \      \  4 /\  8 /")
     escreval("                \  P4  \      \  P6  \  /  \  /")
     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")
     escreval("                   \  P7  \  P8  \  P9  \  /")
     escreval("                    \______\______\______\/")
     escreval("==================================================================")
     escreval("")
fimse

se (cont=9)entao
     escreval("==================================================================")
     escreval("  ____________________                   ")
     escreval(" /    /    /    /    /\                ")
     escreval("/____/____/____/____/  \              ")
     escreval("\    \    \    \    \  /\             ")
     escreval(" \____\____\____\____\/  \            ")
     escreval("                 \    \  /\            ")
     escreval("        __________\____\/  \            ")
     escreval("       /    /    / \    \  /\        ")
     escreval("      /____/____/___\____\/  \      ")
     escreval("      \    \    \    \    \  /\    ")
     escreval("       \____\____\____\____\/  \      ")
     escreval("                       \    \  /\       ")
     escreval("              __________\____\/  \        ")
     escreval("             /    /    / \    \  /\         ")
     escreval("            /____/____/___\____\/  \       ")
     escreval("            \    \    \    \    \  /        ")
     escreval("             \____\____\____\____\/            ")
     escreval("==================================================================")
     escreval("")
fimse

se (cont=10)entao
     escreval("==================================================================")
     escreval("                                    ____________________          ")
     escreval("                                   /   /   /   /   /   /\         ")
     escreval("                                  /___/___/___/___/___/  \        ")
     escreval("                                  \  /\   \   \   \   \  /\       ")
     escreval("                                   \/  \___\___\___\___\/  \      ")
     escreval("                                       /   /\  /    \   \  /\     ")
     escreval("                                      /___/  \/      \___\/  \    ")
     escreval("                                     /   /\  /        \   \  /\   ")
     escreval("                                    /___/  \/          \___\/  \  ")
     escreval("                                    \   \  /\          /   /\  /  ")
     escreval("                                     \___\/  \        /___/  \/   ")
     escreval("                                      \   \  /\      /   /\  /    ")
     escreval("                                       \___\/__\____/___/  \/     ")
     escreval("                                       /   /   /   /   /\  /      ")
     escreval("                                      /___/___/___/___/  \/       ")
     escreval("                                      \   \   \   \   \  /        ")
     escreval("                                       \___\___\___\___\/         ")
     escreval("==================================================================")
     escreval("")
fimse
fimprocedimento

////////////////////////// INSTALANDO 3D 100%////////////////////////////////
procedimento intalando3D100()
//ao final do codigo tem um limpatela entao todo processo anterior e perdido
//por isso fiz esse procedimento
inicio

escreval("==================================================================")
escreval("  ____________________              ____________________          ")
escreval(" /    /    /    /    /\            /   /   /   /   /   /\         ")
escreval("/____/____/____/____/  \          /___/___/___/___/___/  \        ")
escreval("\    \    \    \    \  /\         \  /\   \   \   \   \  /\       ")
escreval(" \____\____\____\____\/  \         \/  \___\___\___\___\/  \      ")
escreval("                 \    \  /\            /   /\  /    \   \  /\     ")
escreval("        __________\____\/  \          /___/  \/      \___\/  \    ")
escreval("       /    /    / \    \  /\        /   /\  /        \   \  /\   ")
escreval("      /____/____/___\____\/  \      /___/  \/          \___\/  \  ")
escreval("      \    \    \    \    \  /\     \   \  /\          /   /\  /  ")
escreval("       \____\____\____\____\/  \     \___\/  \        /___/  \/   ")
escreval("                       \    \  /\     \   \  /\      /   /\  /    ")
escreval("              __________\____\/  \     \___\/__\____/___/  \/     ")
escreval("             /    /    / \    \  /\    /   /   /   /   /\  /      ")
escreval("            /____/____/___\____\/  \  /___/___/___/___/  \/       ")
escreval("            \    \    \    \    \  /  \   \   \   \   \  /        ")
escreval("             \____\____\____\____\/    \___\___\___\___\/         ")
escreval("==================================================================")
escreval("")
escreval("")

escreval("                              100%")
escreva("[")
para cont de 1 ate 64 faca
     escreva("=")
fimpara
     escreva("]")
     escreval("")
     escreval("           CONFIGURAÇÃO CONCLUIDA INICIANDO JOGO...")
     timer 1500
     timer 0.05
fimprocedimento
////////////////////////// INSTALANDO 3D ///////////////////////////////////
procedimento instalando3D()
inicio
escreval("                  ____________________________")
escreval("                 /      /      /      /      /\")
escreval("                /      /      /      /      /  \")
escreval("               /______/______/______/______/    \")
escreval("              /      /      /      /      /\    /\")
escreval("             /      /      /      /      /  \  /  \")
escreval("            /______/______/______/______/    \/    \")
escreval("           /      /      /      /      /\    /\    /\")
escreval("          /      /      /      /      /  \  /  \  /  \")
escreval("         /______/______/______/______/    \/    \/    \")
escreval("        /      /      /      /      /\    /\    /\    /\")
escreval("       /      /      /      /      /  \  /  \  /  \  /  \")
escreval("      /______/______/______/______/    \/    \/    \/    \")
escreval("      \      \      \      \      \    /\    /\    /\    /")
escreval("       \      \      \      \      \  /  \  /  \  /  \  /")
escreval("        \______\______\______\______\/    \/    \/    \/")
escreval("         \      \      \      \      \    /\    /\    /")
escreval("          \      \      \      \      \  /  \  /  \  /")
escreval("           \______\______\______\______\/    \/    \/")
escreval("            \      \      \      \      \    /\    /")
escreval("             \      \      \      \      \  /  \  /")
escreval("              \______\______\______\______\/    \/")
escreval("               \      \      \      \      \    /")
escreval("                \      \      \      \      \  /")
escreval("                 \______\______\______\______\/")
escreval("")
escreval("Nao use FULL SCREEM, expanda a tela ate ver o cubo por completo")
escreval("aperte ENTER para continuar...")
leia(n)
limpatela
   escreval("CONFIGURANDO MODO 3D!!!")
   timer 1500
   timer 0.05
   limpatela
////////////////////////////////  controle  /////////////////////////////
para cont de 0 ate 10 faca
     tela_load()

     se(cont=10)entao
          escreval("                              98%")
          escreva("[")
     senao
          escreval("                              ",cont*10,"%")
          escreva("[")
     fimse

        se (cont<=10)entao
                    se(load<=66)entao
                     para n de 1 ate load faca
                     escreva("=")
                     fimpara
                     load<-load+6
                    senao
                         para n de 1 ate 69 faca
                         escreva("=")
                         fimpara
                         escreva("]")
                    fimse
        fimse

        se (load<=66)entao
            para n de load ate 69 passo 1 faca
               escreva(" ")
            fimpara
            escreva("]")
            se((cont=10)e(cheat=verdadeiro))entao
            escreval("                  ViRuZ InNsTAlL")
            fimse
        fimse


     escreval("")
     //esse time e para um delay visual pois sem ele o codigo seria exibido
     //muito rapido e daria uma dor na vista depois de um certo tempo testando
     timer 850
     timer 0.05

     escreval("")
     limpatela
fimpara
     intalando3D100()

fimprocedimento


//////////////////////////    IA    ///////////////////////////////////////////
procedimento IAjogada(s:inteiro)
inicio
      posicao[s]<-s
      p_usada[s]<-verdadeiro
      vetor_marcado[s]<-"O"
      jogadas<-jogadas+1
      escolhida<-0
fimprocedimento

procedimento IAaleatoria()
// esse repita faz o aleatorio criar numeros ate achar um que na posicao[n]=0
// seja igual pois isso significa que nunca foi usado,pois sem essa condiçao
// a IA ficaria bugada
inicio
   se((vetor_marcado[1]="P")ou(vetor_marcado[2]="P")ou(vetor_marcado[3]="P")ou(vetor_marcado[4]="P")ou(vetor_marcado[5]="P")ou(vetor_marcado[6]="P")ou(vetor_marcado[7]="P")ou(vetor_marcado[8]="P")ou(vetor_marcado[9]="P"))entao
      repita
         aleatorio (1),(9)
         leia(n)
         aleatorio off
      ate (posicao[n]=0)
      posicao[n]<-n

      se ((posicao[n]=n) e (p_usada[n]=falso)) entao
         p_usada[n]<-verdadeiro
         vetor_marcado[n]<-"O"
         jogadas<-jogadas+1
         escolhida<-0
      fimse
   fimse
fimprocedimento

//////////////////////////    IACHEAT    //////////////////////////////////////

procedimento IACHEAT()
inicio
             IAaleatoria()
fimprocedimento

procedimento IAATK()
inicio
//////////////////////////caso linha 1 vitoria
   se((vetor_marcado[1]="O")e(vetor_marcado[2]="O")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[1]="O")e(vetor_marcado[3]="O")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao

   se((vetor_marcado[2]="O")e(vetor_marcado[3]="O")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao
//////////////////////////caso linha 2 vitoria
   se((vetor_marcado[4]="O")e(vetor_marcado[5]="O")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[4]="O")e(vetor_marcado[6]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[6]="O")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao
//////////////////////////caso linha 3 vitoria
   se((vetor_marcado[7]="O")e(vetor_marcado[8]="O")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao

   se((vetor_marcado[8]="O")e(vetor_marcado[9]="O")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[7]="O")e(vetor_marcado[9]="O")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao
//////////////////////////caso coluna 1 vitoria
   se((vetor_marcado[1]="O")e(vetor_marcado[4]="O")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[1]="O")e(vetor_marcado[7]="O")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao

   se((vetor_marcado[4]="O")e(vetor_marcado[7]="O")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao
//////////////////////////caso coluna 2 vitoria
   se((vetor_marcado[2]="O")e(vetor_marcado[5]="O")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao

   se((vetor_marcado[2]="O")e(vetor_marcado[8]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[8]="O")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao
//////////////////////////caso coluna 3 vitoria
   se((vetor_marcado[6]="O")e(vetor_marcado[9]="O")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[9]="O")e(vetor_marcado[3]="O")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[6]="O")e(vetor_marcado[3]="O")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao
//////////////////////////caso diagonal 1 vitoria
   se((vetor_marcado[1]="O")e(vetor_marcado[5]="O")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[9]="O")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao

   se((vetor_marcado[1]="O")e(vetor_marcado[9]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao
//////////////////////////caso diagonal 2 vitoria
   se((vetor_marcado[3]="O")e(vetor_marcado[5]="O")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[7]="O")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[3]="O")e(vetor_marcado[7]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao
   
   se((vetor_marcado[1]="P")ou(vetor_marcado[2]="P")ou(vetor_marcado[3]="P")ou(vetor_marcado[4]="P")ou(vetor_marcado[5]="P")ou(vetor_marcado[6]="P")ou(vetor_marcado[7]="P")ou(vetor_marcado[8]="P")ou(vetor_marcado[9]="P"))entao
      IAaleatoria()
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
   fimse
fimprocedimento

procedimento IADEF()
inicio
//////////////////////////caso linha 1 defesa
   se((vetor_marcado[1]="x")e(vetor_marcado[2]="x")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[1]="x")e(vetor_marcado[3]="x")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao

   se((vetor_marcado[2]="x")e(vetor_marcado[3]="x")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao

//////////////////////////caso linha 2 defesa
   se((vetor_marcado[4]="x")e(vetor_marcado[5]="x")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[4]="x")e(vetor_marcado[6]="x")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="x")e(vetor_marcado[6]="x")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao
//////////////////////////caso linha 3 defesa
   se((vetor_marcado[7]="x")e(vetor_marcado[8]="x")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao

   se((vetor_marcado[8]="x")e(vetor_marcado[9]="x")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[7]="x")e(vetor_marcado[9]="x")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao
//////////////////////////caso coluna 1 defesa
   se((vetor_marcado[1]="x")e(vetor_marcado[4]="x")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[1]="x")e(vetor_marcado[7]="x")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao

   se((vetor_marcado[4]="x")e(vetor_marcado[7]="x")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao
//////////////////////////caso coluna 2 defesa
   se((vetor_marcado[2]="x")e(vetor_marcado[5]="x")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao

   se((vetor_marcado[2]="x")e(vetor_marcado[8]="x")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="x")e(vetor_marcado[8]="x")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao
//////////////////////////caso coluna 3 defesa
   se((vetor_marcado[6]="x")e(vetor_marcado[9]="x")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[9]="x")e(vetor_marcado[3]="x")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[6]="x")e(vetor_marcado[3]="x")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao
   se((vetor_marcado[1]="P")ou(vetor_marcado[2]="P")ou(vetor_marcado[3]="P")ou(vetor_marcado[4]="P")ou(vetor_marcado[5]="P")ou(vetor_marcado[6]="P")ou(vetor_marcado[7]="P")ou(vetor_marcado[8]="P")ou(vetor_marcado[9]="P"))entao
      IAaleatoria()
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
   fimse
   fimse
   fimse
   fimse
   fimse
   fimse
   fimse
fimprocedimento

procedimento IAHELL()
inicio
//////////////////////////caso linha 1 vitoria
   se((vetor_marcado[1]="O")e(vetor_marcado[2]="O")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[1]="O")e(vetor_marcado[3]="O")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao

   se((vetor_marcado[2]="O")e(vetor_marcado[3]="O")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao
//////////////////////////caso linha 2 vitoria
   se((vetor_marcado[4]="O")e(vetor_marcado[5]="O")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[4]="O")e(vetor_marcado[6]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[6]="O")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao
//////////////////////////caso linha 3 vitoria
   se((vetor_marcado[7]="O")e(vetor_marcado[8]="O")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao

   se((vetor_marcado[8]="O")e(vetor_marcado[9]="O")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[7]="O")e(vetor_marcado[9]="O")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao
//////////////////////////caso coluna 1 vitoria
   se((vetor_marcado[1]="O")e(vetor_marcado[4]="O")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[1]="O")e(vetor_marcado[7]="O")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao

   se((vetor_marcado[4]="O")e(vetor_marcado[7]="O")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao
//////////////////////////caso coluna 2 vitoria
   se((vetor_marcado[2]="O")e(vetor_marcado[5]="O")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao

   se((vetor_marcado[2]="O")e(vetor_marcado[8]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[8]="O")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao
//////////////////////////caso coluna 3 vitoria
   se((vetor_marcado[6]="O")e(vetor_marcado[9]="O")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[9]="O")e(vetor_marcado[3]="O")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[6]="O")e(vetor_marcado[3]="O")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao
//////////////////////////caso diagonal 1 vitoria
   se((vetor_marcado[1]="O")e(vetor_marcado[5]="O")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[9]="O")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao

   se((vetor_marcado[1]="O")e(vetor_marcado[9]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao
//////////////////////////caso diagonal 2 vitoria
   se((vetor_marcado[3]="O")e(vetor_marcado[5]="O")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[5]="O")e(vetor_marcado[7]="O")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[3]="O")e(vetor_marcado[7]="O")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao
   //////////////////////////caso linha 1 defesa
   se((vetor_marcado[1]="x")e(vetor_marcado[2]="x")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[1]="x")e(vetor_marcado[3]="x")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao

   se((vetor_marcado[2]="x")e(vetor_marcado[3]="x")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao

//////////////////////////caso linha 2 defesa
   se((vetor_marcado[4]="x")e(vetor_marcado[5]="x")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[4]="x")e(vetor_marcado[6]="x")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="x")e(vetor_marcado[6]="x")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao
//////////////////////////caso linha 3 defesa
   se((vetor_marcado[7]="x")e(vetor_marcado[8]="x")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao

   se((vetor_marcado[8]="x")e(vetor_marcado[9]="x")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[7]="x")e(vetor_marcado[9]="x")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao
//////////////////////////caso coluna 1 defesa
   se((vetor_marcado[1]="x")e(vetor_marcado[4]="x")e(vetor_marcado[7]="P"))entao
      IAjogada(7)
   senao

   se((vetor_marcado[1]="x")e(vetor_marcado[7]="x")e(vetor_marcado[4]="P"))entao
      IAjogada(4)
   senao

   se((vetor_marcado[4]="x")e(vetor_marcado[7]="x")e(vetor_marcado[1]="P"))entao
      IAjogada(1)
   senao
//////////////////////////caso coluna 2 defesa
   se((vetor_marcado[2]="x")e(vetor_marcado[5]="x")e(vetor_marcado[8]="P"))entao
      IAjogada(8)
   senao

   se((vetor_marcado[2]="x")e(vetor_marcado[8]="x")e(vetor_marcado[5]="P"))entao
      IAjogada(5)
   senao

   se((vetor_marcado[5]="x")e(vetor_marcado[8]="x")e(vetor_marcado[2]="P"))entao
      IAjogada(2)
   senao
//////////////////////////caso coluna 3 defesa
   se((vetor_marcado[6]="x")e(vetor_marcado[9]="x")e(vetor_marcado[3]="P"))entao
      IAjogada(3)
   senao

   se((vetor_marcado[9]="x")e(vetor_marcado[3]="x")e(vetor_marcado[6]="P"))entao
      IAjogada(6)
   senao

   se((vetor_marcado[6]="x")e(vetor_marcado[3]="x")e(vetor_marcado[9]="P"))entao
      IAjogada(9)
   senao
   se((vetor_marcado[1]="P")ou(vetor_marcado[2]="P")ou(vetor_marcado[3]="P")ou(vetor_marcado[4]="P")ou(vetor_marcado[5]="P")ou(vetor_marcado[6]="P")ou(vetor_marcado[7]="P")ou(vetor_marcado[8]="P")ou(vetor_marcado[9]="P"))entao
      IAaleatoria()
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
   fimse
   fimse
   fimse
   fimse
   fimse
   fimse
   fimse
fimprocedimento

////////////////////dificuldade Fácil  ////////////////////////////////////////
procedimento IA1()
inicio
se (jogadas=2)entao
   IAaleatoria()
senao
 se((jogadas=4)ou(jogadas=6)ou(jogadas=8))entao
    repita
    aleatorio (1),(2)
    leia(aleatorion)
    ate((aleatorion=1)ou(aleatorion=2))
    aleatorio off
    
    se(aleatorion=1)entao
     IADEF()
    senao
     se((vetor_marcado[1]="P")ou(vetor_marcado[2]="P")ou(vetor_marcado[3]="P")ou(vetor_marcado[4]="P")ou(vetor_marcado[5]="P")ou(vetor_marcado[6]="P")ou(vetor_marcado[7]="P")ou(vetor_marcado[8]="P")ou(vetor_marcado[9]="P"))entao
      IAaleatoria()
   fimse
   fimse
fimse
fimse
fimprocedimento

procedimento IA2()
inicio
////////////////////dificuldade Normal  ////////////////////////////////////////
se (jogadas=2)entao
   IAaleatoria()
senao
se ((jogadas=4)ou(jogadas=6)ou(jogadas=8))entao
   repita
   aleatorio (1),(2)
   leia(aleatorion)
   ate((aleatorion=1)ou(aleatorion=2))
   aleatorio off

   se (aleatorion=1)entao
      IAATK()
   senao
    se (aleatorion=2)entao
       IADEF()
   fimse
   fimse
fimse
fimse
fimprocedimento


procedimento IA3()
inicio
////////////////////dificuldade HELL  ////////////////////////////////////////
se (jogadas=2)entao
////////////////////caso diagonal  ////////////////////////////////////////
   se((vetor_marcado[1]="x")ou(vetor_marcado[3]="x")ou(vetor_marcado[7]="x")ou(vetor_marcado[9]="x"))entao
      IAjogada(5)
   fimse
////////////////////caso cruz  ////////////////////////////////////////////
   se(vetor_marcado[2]="x")entao
      repita
      aleatorio(1),(8)
      leia(n)
      aleatorio off
      ate((n=1)ou(n=3)ou(n=8))
      IAjogada(n)
   fimse

   se(vetor_marcado[4]="x")entao
      repita
      aleatorio(1),(7)
      leia(n)
      aleatorio off
      ate((n=1)ou(n=6)ou(n=7))
      IAjogada(n)
   fimse

   se(vetor_marcado[6]="x")entao
      repita
      aleatorio(1),(9)
      leia(n)
      aleatorio off
      ate((n=3)ou(n=4)ou(n=9))
      IAjogada(n)
   fimse

   se(vetor_marcado[8]="x")entao
      repita
      aleatorio(1),(9)
      leia(n)
      aleatorio off
      ate((n=2)ou(n=7)ou(n=9))
      IAjogada(n)
   fimse
////////////////////caso 5 //////////////////////////////////////////////////
   se(vetor_marcado[5]="x")entao
      repita
      aleatorio(1),(9)
      leia(n)
      aleatorio off
      ate((n=1)ou(n=3)ou(n=7)ou(n=9))
      IAjogada(n)
   fimse
fimse

se ((jogadas=4)ou(jogadas=6)ou(jogadas=8))entao
   IAHELL()
fimse
fimprocedimento

//////////////////////////PLAYER X CPU////////////////////////////////////////
procedimento pXcpu()
inicio
enquanto (fim<1) faca
se (escolhida=3)entao
//////////////////////////zera as variaveis para a proxima partida///////////
   partida<-partida+1
   jogadas<-1
   escolhida<-0
   fim_analize<-falso
   para cont<-1 ate 9 faca
   vetor_marcado[cont]<-""
   posicao[cont]<-0
   p_usada[cont]<-falso
   fimpara
senao
   partida<-partida+1
   jogadas<-1
se(cheat=verdadeiro) entao
repita

escreval("========================")
escreval("JOGO DA VELHA")
escreval("========================")
escreval("")
   escreva("PLAYER 1: ")
   leia(player1)
   player2<-"CPU"
   limpatela

escreval("========================")
escreval("JOGO DA VELHA")
escreval("========================")
escreval("")
   player1<-"BABACA"
escreval("Seu nome e BABACA esse nome esta correto?[s/n]")
se (cont>=3)entao
escreval("Qual e você quer jogar ou não?")
fimse
leia(babaca)
cont<-cont+1
limpatela
ate(babaca="s")

senao
escreval("========================")
escreval("JOGO DA VELHA")
escreval("========================")
escreval("")
   escreva("PLAYER 1: ")
   leia(player1)
   //player1<-"ADM"
   player2<-"CPU"
   limpatela
fimse
   repita
   escreval("Selecione a Dificuldade: ")
   escreval("")
   escreval("1:Carai eu sou um merda mermão       [Fácil]")
   escreval("2:Acho que ganho                    [Normal]")
   escreval("3:WELCOME TO HELL!!!    [O Nome Já Diz Tudo]")
   escreval("")
   escreva("Dificuldade:")
   leia(dificuldade)
   //dificuldade<-3
   limpatela
   ate((dificuldade=1)ou(dificuldade=2)ou(dificuldade=3))
   repita
         limpatela
     escreval("   333333333      DDDDDDD")
     escreval("    33     33      DDD  DDD")
     escreval("            33      DDD   DDD")
     escreval("             33      DDD    DDD")
     escreval("          333333      DDD     DDD")
     escreval("           333333      DDD     DDD")
     escreval("                33      DDD     DDD")
     escreval("                 33      DDD     DDD")
     escreval("            33    33      DDD    DDD")
     escreval("            333333333      DDDDDDD")
         escreval("")
         escreval("1: 3D [ON]")
         escreval("0: 3D [OFF]")
         escreval("")
         escreval("Deseja jogar em 3D?")
         leia(ativa_3D)
         //ativa_3D<-0
         limpatela
   ate((ativa_3D=0)ou(ativa_3D=1))
   se(ativa_3D=1)entao
       instalando3D()
   fimse
fimse

repita
   se (jogadas<10)entao
      repita
      se(ativa_3D=1)entao
                         tabuleiro3D()
      senao
           tabuleiro()
      fimse
                 se (escolhida=1) entao
                    escreval("ESSA POSSIÇAO JA FOI ESCOLHIDA!!")
                 fimse

                 repita
                       escreva(maiusc(player1)," joga X na P")
                       leia(n)
                       limpatela
                       se (n=0) ou (n>9)entao
                       limpatela
                             se(ativa_3D=1)entao
                                        tabuleiro3D()
                             senao
                                         tabuleiro()
                             fimse
                       escreval("JOGADA INVALIDA!!")
                       fimse
                 ate (n>0) e (n<=9)

                 posicao[n]<-n

                 se (posicao[n]=n) e (p_usada[n]=falso) entao
                    p_usada[n]<-verdadeiro
                    vetor_marcado[n]<-"X"
                    jogadas<-jogadas+1
                    escolhida<-0
                    limpatela
                 senao
                      escolhida<-1
                      limpatela
                            se(ativa_3D=1)entao
                                       tabuleiro3D()
                             senao
                                         tabuleiro()
                             fimse
                 fimse

      ate(escolhida=0)
   fimse

   analize()

   se (jogadas<10) entao
      repita
        se ((dificuldade=1)e(cheat=falso))entao
        IA1()
        fimse
        se ((dificuldade=2)e(cheat=falso))entao
        IA2()
        fimse
        se ((dificuldade=3)e(cheat=falso))entao
        IA3()
        fimse
        se (cheat=verdadeiro)entao
        IACHEAT()
        fimse
      ate(escolhida=0)
   fimse

   analize()

// sao 9 posiçoes entao se ate as 10 jogas nao tiver um vencedor o jogo acaba
// e gera um empate.
ate (jogadas=10)
escolhida<-3
fimenquanto

/////////////////////////////mostra o placar final//////////////////////////

limpatela
se (v1>v2) entao
   escreval("========================")
   escreval("JOGO DA VELHA")
   escreval("========================")
   escreval("")
   escreval("TOTAL DE PARTIDAS:",partida)
   escreval("")
   escreval(maiusc(player1)," VENCEU COM",v1," VITORIAS")
   escreval(maiusc(player2)," PERDEU COM",v2," VITORIAS")
senao
     escreval("========================")
     escreval("JOGO DA VELHA")
     escreval("========================")
     escreval("")
     escreval("TOTAL DE PARTIDAS:",partida)
     escreval("")
     escreval(maiusc(player2)," VENCEU COM",v2," VITORIAS")
     escreval(maiusc(player1)," PERDEU COM",v1," VITORIAS")
fimse
limpatela
se (v1=v2) entao
     escreval("========================")
     escreval("JOGO DA VELHA")
     escreval("========================")
     escreval("")
     escreval("TOTAL DE PARTIDAS:",partida)
     escreval("")
     escreval("A PARTIDA TERMINOU EM EMPATE!!!")
     escreval("")
     escreval(maiusc(player1)," :",v1," VITORIAS")
     escreval(maiusc(player2)," :",v2," VITORIAS")
fimse
fimprocedimento

//////////////////////////PLAYER X PLAYER/////////////////////////////////////
procedimento pXp()
inicio
enquanto (fim<1) faca
se (escolhida=3)entao
//////////////////////////zera as variaveis para a proxima partida///////////
   partida<-partida+1
   jogadas<-1
   escolhida<-0
   fim_analize<-falso
   para cont<-1 ate 9 faca
   vetor_marcado[cont]<-""
   posicao[cont]<-0
   p_usada[cont]<-falso
   fimpara
senao
   partida<-partida+1
   jogadas<-1
escreval("========================")
escreval("JOGO DA VELHA")
escreval("========================")
escreval("")
   escreva("PLAYER 1: ")
   leia(player1)
   escreva("PLAYER 2: ")
   leia(player2)
   limpatela
   repita
         limpatela
                  escreval("   333333333      DDDDDDD")
                  escreval("    33     33      DDD  DDD")
                  escreval("            33      DDD   DDD")
                  escreval("             33      DDD    DDD")
                  escreval("          333333      DDD     DDD")
                  escreval("           333333      DDD     DDD")
                  escreval("                33      DDD     DDD")
                  escreval("                 33      DDD     DDD")
                  escreval("            33    33      DDD    DDD")
                  escreval("            333333333      DDDDDDD")
         escreval("")
         escreval("1: 3D [ON]")
         escreval("0: 3D [OFF]")
         escreval("")
         escreval("Deseja jogar em 3D?")
         leia(ativa_3D)
         //ativa_3D<-1
         limpatela
   ate((ativa_3D=0)ou(ativa_3D=1))
   se(ativa_3D=1)entao
       instalando3D()
   fimse
fimse

repita

   se (jogadas<10)entao
      repita
      se(ativa_3D=1)entao
      tabuleiro3D()
      senao
      tabuleiro()
      fimse
                 se (escolhida=1) entao
                    escreval("ESSA POSSIÇAO JA FOI ESCOLHIDA!!")
                 fimse

                 repita
                       escreva(maiusc(player1)," joga X na P")
                       leia(n)
                       limpatela
                       se (n=0) ou (n>9)entao
                       limpatela
                       se(ativa_3D=1)entao
                       tabuleiro3D()
                       senao
                       tabuleiro()
                       fimse
                       escreval("JOGADA INVALIDA!!")
                       fimse
                 ate (n>0) e (n<=9)

                 posicao[n]<-n

                 se (posicao[n]=n) e (p_usada[n]=falso) entao
                    p_usada[n]<-verdadeiro
                    vetor_marcado[n]<-"X"
                    jogadas<-jogadas+1
                    escolhida<-0
                    limpatela
                 senao
                      escolhida<-1
                      limpatela
                      se(ativa_3D=1)entao
                      tabuleiro3D()
                      senao
                      tabuleiro()
                      fimse
                 fimse

      ate(escolhida=0)
   fimse

   analize()

   se (jogadas<10) entao
      repita
      se(ativa_3D=1)entao
      tabuleiro3D()
      senao
      tabuleiro()
      fimse
                 se (escolhida=1) entao
                    escreval("ESSA POSSIÇAO JA FOI ESCOLHIDA!!")
                 fimse

                 repita
                       escreva(maiusc(player2)," joga O na P")
                       leia(n)
                       limpatela
                       se (n=0) ou (n>9)entao
                       limpatela
                       se(ativa_3D=1)entao
                       tabuleiro3D()
                       senao
                       tabuleiro()
                       fimse
                       escreval("JOGADA INVALIDA!!")
                       fimse
                 ate (n>0) e (n<=9)

                 posicao[n]<-n

                 se (posicao[n]=n) e (p_usada[n]=falso) entao
                    p_usada[n]<-verdadeiro
                    vetor_marcado[n]<-"O"
                    jogadas<-jogadas+1
                    escolhida<-0
                    limpatela
                 senao
                      escolhida<-1
                      limpatela
                      se(ativa_3D=1)entao
                      tabuleiro3D()
                      senao
                      tabuleiro()
                      fimse
                 fimse

      ate(escolhida=0)
   fimse

   analize()

// sao 9 posiçoes entao se ate as 10 jogas nao tiver um vencedor o jogo acaba
// e gera um empate.
ate (jogadas=10)
escolhida<-3
fimenquanto

/////////////////////////////mostra o placar final//////////////////////////

limpatela
se (v1>v2) entao
   escreval("========================")
   escreval("JOGO DA VELHA")
   escreval("========================")
   escreval("")
   escreval("TOTAL DE PARTIDAS:",partida)
   escreval("")
   escreval(maiusc(player1)," VENCEU COM",v1," VITORIAS")
   escreval(maiusc(player2)," PERDEU COM",v2," VITORIAS")
senao
     escreval("========================")
     escreval("JOGO DA VELHA")
     escreval("========================")
     escreval("")
     escreval("TOTAL DE PARTIDAS:",partida)
     escreval("")
     escreval(maiusc(player2)," VENCEU COM",v2," VITORIAS")
     escreval(maiusc(player1)," PERDEU COM",v1," VITORIAS")
fimse

limpatela
se (v1=v2) entao
     escreval("========================")
     escreval("JOGO DA VELHA")
     escreval("========================")
     escreval("")
     escreval("TOTAL DE PARTIDAS:",partida)
     escreval("")
     escreval("A PARTIDA TERMINOU EM EMPATE!!!")
     escreval("")
     escreval(maiusc(player1)," :",v1," VITORIAS")
     escreval(maiusc(player2)," :",v2," VITORIAS")
fimse
fimprocedimento


//////////////////////////cria o tabuleiro//////////////////////////
procedimento tabuleiro()
inicio
limpatela
      escreval("========================")
      escreval("JOGO DA VELHA")
      escreval("========================")
      escreval("      ",partida,"ª PARTIDA")
      escreval("")
     se ((v1=0) ou (v1>1)) entao
     escreval(maiusc(player1),":",v1," VITORIAS")
     fimse
     se (v1=1) entao
     escreval(maiusc(player1),":",v1," VITORIA")
     fimse
     se ((v2=0) ou (v2>1)) entao
     escreval(maiusc(player2),":",v2," VITORIAS")
     fimse
     se (v2=1) entao
     escreval(maiusc(player2),":",v2," VITORIA")
     fimse

//////////////////////////tabuleiro//////////////////////////
     escreval("                    ")
     escreval(" |-----|-----|-----|")
contador<-1
para contp<-1 ate 3 faca
para cont<-1 ate 3 faca
        se (p_usada[contador]=verdadeiro) entao
           escreva(" | ")
           escreva(" ",vetor_marcado[contador]," ")
           contador<-contador+1
        senao
             vetor_marcado[contador]<-"P"
             escreva(" | ")
             escreva(vetor_marcado[contador],contador)
             contador<-contador+1
        fimse
fimpara
escreva(" |")
escreval()
escreval(" |-----|-----|-----|")
fimpara
escreval("")
fimprocedimento

//////////////////////////cria o tabuleiro 3D //////////////////////////
procedimento tabuleiro3D()
inicio
limpatela
      escreval("========================")
      escreval("JOGO DA VELHA")
      escreval("========================")
      escreval("      ",partida,"ª PARTIDA")
      escreval("")
     se ((v1=0) ou (v1>1)) entao
     escreval(maiusc(player1),":",v1," VITORIAS")
     fimse
     se (v1=1) entao
     escreval(maiusc(player1),":",v1," VITORIA")
     fimse
     se ((v2=0) ou (v2>1)) entao
     escreval(maiusc(player2),":",v2," VITORIAS")
     fimse
     se (v2=1) entao
     escreval(maiusc(player2),":",v2," VITORIA")
     fimse

//////////////////////////tabuleiro 3D//////////////////////////
     para contador de 1 ate 9 faca
     se (vetor_marcado[contador]="")entao
     vetor_marcado[contador]<-"P"
     fimse
     fimpara

///////////////////////////// IA
se(((jogadas=1)ou(jogadas=7)ou(jogadas=10))e(tipo_partida="1"))entao
     contador<-1
     escreval("")
     escreval("                  _____________________")
     escreval("                 /      /      /      /\")

     se (p_usada[1]=verdadeiro)entao
        escreva("                /  ",vetor_marcado[contador],"   /")
        contador<-contador+1
     senao
          escreva("                /  P1  /")
          contador<-contador+1
     fimse

     se (p_usada[2]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  /")
        contador<-contador+1
     senao
          escreva("  P2  /")
          contador<-contador+1
     fimse
     
     se (p_usada[3]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  /  \")
        contador<-contador+1
     senao
          escreval("  P3  /  \")
          contador<-contador+1
     fimse

     escreval("               /______/______/______/    \")
     escreval("              /      /      /      /\    /\")
     
     se (p_usada[4]=verdadeiro)entao
        escreva("             /  ",vetor_marcado[contador],"   /")
        contador<-contador+1
     senao
          escreva("             /  P4  /")
          contador<-contador+1
     fimse

     se (p_usada[5]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  /")
        contador<-contador+1
     senao
          escreva("  P5  /")
          contador<-contador+1
     fimse

     se (p_usada[6]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  /  \  /  \")
        contador<-contador+1
     senao
          escreval("  P6  /  \  /  \")
          contador<-contador+1
     fimse
     
     escreval("            /______/______/______/    \/    \")
     escreval("           /      /      /      /\    /\    /\")

     se (p_usada[7]=verdadeiro)entao
        escreva("          /  ",vetor_marcado[contador],"   /")
        contador<-contador+1
     senao
          escreva("          /  P7  /")
          contador<-contador+1
     fimse

     se (p_usada[8]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  /")
        contador<-contador+1
     senao
          escreva("  P8  /")
          contador<-contador+1
     fimse

     se (p_usada[9]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  /  \  /  \  /  \")
        contador<-contador+1
     senao
          escreval("  P9  /  \  /  \  /  \")
          contador<-contador+1
     fimse

     escreval("         /______/______/______/    \/    \/    \")
     escreval("         \      \      \      \    /\    /\    /")
     escreval("          \      \      \      \  /  \  /  \  /")
     escreval("           \______\______\______\/    \/    \/")
     escreval("            \      \      \      \    /\    /")
     escreval("             \      \      \      \  /  \  /")
     escreval("              \______\______\______\/    \/")
     escreval("               \      \      \      \    /")
     escreval("                \      \      \      \  /")
     escreval("                 \______\______\______\/")
fimse

se(((jogadas=3)ou(jogadas=9))e(tipo_partida="1"))entao
     contador<-1
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /      /      /      /  \")
     escreval("                  /______/______/______/    \")
     escreval("                 /      /      /      /\    /\")
     escreval("                /      /      /      /  \  /  \")
     escreval("               /______/______/______/    \/    \")
     escreval("              /      /      /      /\    /\    /\")
     escreval("             /      /      /      /  \  /  \  /  \")
     escreval("            /______/______/______/    \/    \/    \")
     escreval("            \      \      \      \    /\    /\    /")

     se (p_usada[1]=verdadeiro)entao
        escreva("             \  ",vetor_marcado[contador],"   \")
        contador<-contador+1
     senao
          escreva("             \  P1  \")
          contador<-contador+1
     fimse

     se (p_usada[2]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  \")
        contador<-contador+1
     senao
          escreva("  P2  \")
          contador<-contador+1
     fimse

     se (p_usada[3]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  \  /  \  /  \  /")
        contador<-contador+1
     senao
          escreval("  P3  \  /  \  /  \  /")
          contador<-contador+1
     fimse

     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")

     se (p_usada[4]=verdadeiro)entao
        escreva("                \  ",vetor_marcado[contador],"   \")
        contador<-contador+1
     senao
          escreva("                \  P4  \")
          contador<-contador+1
     fimse

     se (p_usada[5]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  \")
        contador<-contador+1
     senao
          escreva("  P5  \")
          contador<-contador+1
     fimse

     se (p_usada[6]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  \  /  \  /")
        contador<-contador+1
     senao
          escreval("  P6  \  /  \  /")
          contador<-contador+1
     fimse

     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")

     se (p_usada[7]=verdadeiro)entao
        escreva("                   \  ",vetor_marcado[contador],"   \")
        contador<-contador+1
     senao
          escreva("                   \  P7  \")
          contador<-contador+1
     fimse

     se (p_usada[8]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  \")
        contador<-contador+1
     senao
          escreva("  P8  \")
          contador<-contador+1
     fimse

     se (p_usada[9]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  \  /")
        contador<-contador+1
     senao
          escreval("  P9  \  /")
          contador<-contador+1
     fimse
     
     escreval("                    \______\______\______\/")
fimse

se((jogadas=5)e(tipo_partida="1"))entao
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /      /      /      /  \")

     se (p_usada[3]=verdadeiro)entao
          escreval("                  /______/______/______/ ",vetor_marcado[3],"  \")
          escreval("                 /      /      /      /\    /\")
          escreval("                /      /      /      /  \  /  \")
     senao
          escreval("                  /______/______/______/ P  \")
          escreval("                 /      /      /      /\  3 /\")
          escreval("                /      /      /      /  \  /  \")
     fimse

     se ((p_usada[2]=verdadeiro)e(p_usada[6]=verdadeiro))entao
        escreval("               /______/______/______/ ",vetor_marcado[2],"  \/ ",vetor_marcado[6],"  \")
        escreval("              /      /      /      /\    /\    /\")
        escreval("             /      /      /      /  \  /  \  /  \")
     senao
          se (p_usada[2]=verdadeiro)entao
          escreva("               /______/______/______/ ",vetor_marcado[2])
          senao
          escreva("               /______/______/______/ P")
          fimse

          se ((p_usada[2]=falso)e(p_usada[6]=verdadeiro))entao
          escreval("  \/ ",vetor_marcado[6],"  \")
          escreval("              /      /      /      /\  2 /\    /\")
          escreval("             /      /      /      /  \  /  \  /  \")
          fimse

          se ((p_usada[2]=verdadeiro)e(p_usada[6]=falso))entao
          escreval("  \/ P  \")
          escreval("              /      /      /      /\    /\  6 /\")
          escreval("             /      /      /      /  \  /  \  /  \")
          fimse

          se ((p_usada[2]=falso)e(p_usada[6]=falso))entao
          escreval("  \/ P  \")
          escreval("              /      /      /      /\  2 /\  6 /\")
          escreval("             /      /      /      /  \  /  \  /  \")
          fimse
     fimse

     se ((p_usada[1]=verdadeiro)e(p_usada[5]=verdadeiro)e(p_usada[9]=verdadeiro))entao
          escreval("            /______/______/______/ ",vetor_marcado[1],"  \/ ",vetor_marcado[5],"  \/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\    /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
     senao
          se (p_usada[1]=verdadeiro)entao
          escreva("            /______/______/______/ ",vetor_marcado[1],"  \")
          senao
          escreva("            /______/______/______/ P  \")
          fimse

          se (p_usada[5]=verdadeiro)entao
          escreva("/ ",vetor_marcado[5],"  \")
          senao
          escreva("/ P  \")
          fimse

          se ((p_usada[1]=verdadeiro)e(p_usada[5]=falso)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\  5 /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=verdadeiro)e(p_usada[5]=verdadeiro)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\    /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=verdadeiro)e(p_usada[5]=falso)e(p_usada[9]=verdadeiro))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\  5 /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=verdadeiro)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\    /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=verdadeiro)e(p_usada[9]=verdadeiro))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\    /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=falso)e(p_usada[9]=verdadeiro))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\  5 /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=falso)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\  5 /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse
     fimse

     se ((p_usada[4]=verdadeiro)e(p_usada[8]=verdadeiro))entao
          escreval("              \______\______\______\/ ",vetor_marcado[4],"  \/ ",vetor_marcado[8],"  \/")
          escreval("               \      \      \      \    /\    /")
          escreval("                \      \      \      \  /  \  /")
     senao
          se (p_usada[4]=verdadeiro)entao
          escreva("              \______\______\______\/ ",vetor_marcado[4])
          senao
          escreva("              \______\______\______\/ P")
          fimse

          se ((p_usada[4]=falso)e(p_usada[8]=verdadeiro))entao
          escreval("  \/ ",vetor_marcado[8],"  \/")
          escreval("               \      \      \      \  4 /\    /")
          escreval("                \      \      \      \  /  \  /")
          fimse

          se ((p_usada[4]=verdadeiro)e(p_usada[8]=falso))entao
          escreval("  \/ P  \/")
          escreval("               \      \      \      \    /\  8 /")
          escreval("                \      \      \      \  /  \  /")
          fimse

          se ((p_usada[4]=falso)e(p_usada[8]=falso))entao
          escreval("  \/ P  \/")
          escreval("               \      \      \      \  4 /\  8 /")
          escreval("                \      \      \      \  /  \  /")
          fimse
     fimse

     se (p_usada[7]=verdadeiro)entao
          escreval("                 \______\______\______\/ ",vetor_marcado[7],"  \/")
          escreval("                  \      \      \      \    /")
          escreval("                   \      \      \      \  /")
          escreval("                    \______\______\______\/")
     senao
          escreval("                 \______\______\______\/ P  \/")
          escreval("                  \      \      \      \  7 /")
          escreval("                   \      \      \      \  /")
          escreval("                    \______\______\______\/")
     fimse
fimse

//////////////////////////  PXP
se(((jogadas=1)ou(jogadas=4)ou(jogadas=7)ou(jogadas=10))e(tipo_partida="2"))entao
     contador<-1
     escreval("")
     escreval("                  _____________________")
     escreval("                 /      /      /      /\")

     se (p_usada[1]=verdadeiro)entao
        escreva("                /  ",vetor_marcado[contador],"   /")
        contador<-contador+1
     senao
          escreva("                /  P1  /")
          contador<-contador+1
     fimse

     se (p_usada[2]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  /")
        contador<-contador+1
     senao
          escreva("  P2  /")
          contador<-contador+1
     fimse

     se (p_usada[3]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  /  \")
        contador<-contador+1
     senao
          escreval("  P3  /  \")
          contador<-contador+1
     fimse

     escreval("               /______/______/______/    \")
     escreval("              /      /      /      /\    /\")

     se (p_usada[4]=verdadeiro)entao
        escreva("             /  ",vetor_marcado[contador],"   /")
        contador<-contador+1
     senao
          escreva("             /  P4  /")
          contador<-contador+1
     fimse

     se (p_usada[5]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  /")
        contador<-contador+1
     senao
          escreva("  P5  /")
          contador<-contador+1
     fimse

     se (p_usada[6]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  /  \  /  \")
        contador<-contador+1
     senao
          escreval("  P6  /  \  /  \")
          contador<-contador+1
     fimse

     escreval("            /______/______/______/    \/    \")
     escreval("           /      /      /      /\    /\    /\")

     se (p_usada[7]=verdadeiro)entao
        escreva("          /  ",vetor_marcado[contador],"   /")
        contador<-contador+1
     senao
          escreva("          /  P7  /")
          contador<-contador+1
     fimse

     se (p_usada[8]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  /")
        contador<-contador+1
     senao
          escreva("  P8  /")
          contador<-contador+1
     fimse

     se (p_usada[9]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  /  \  /  \  /  \")
        contador<-contador+1
     senao
          escreval("  P9  /  \  /  \  /  \")
          contador<-contador+1
     fimse

     escreval("         /______/______/______/    \/    \/    \")
     escreval("         \      \      \      \    /\    /\    /")
     escreval("          \      \      \      \  /  \  /  \  /")
     escreval("           \______\______\______\/    \/    \/")
     escreval("            \      \      \      \    /\    /")
     escreval("             \      \      \      \  /  \  /")
     escreval("              \______\______\______\/    \/")
     escreval("               \      \      \      \    /")
     escreval("                \      \      \      \  /")
     escreval("                 \______\______\______\/")
fimse

se(((jogadas=2)ou(jogadas=5)ou(jogadas=8))e(tipo_partida="2"))entao
     contador<-1
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /      /      /      /  \")
     escreval("                  /______/______/______/    \")
     escreval("                 /      /      /      /\    /\")
     escreval("                /      /      /      /  \  /  \")
     escreval("               /______/______/______/    \/    \")
     escreval("              /      /      /      /\    /\    /\")
     escreval("             /      /      /      /  \  /  \  /  \")
     escreval("            /______/______/______/    \/    \/    \")
     escreval("            \      \      \      \    /\    /\    /")

     se (p_usada[1]=verdadeiro)entao
        escreva("             \  ",vetor_marcado[contador],"   \")
        contador<-contador+1
     senao
          escreva("             \  P1  \")
          contador<-contador+1
     fimse

     se (p_usada[2]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  \")
        contador<-contador+1
     senao
          escreva("  P2  \")
          contador<-contador+1
     fimse

     se (p_usada[3]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  \  /  \  /  \  /")
        contador<-contador+1
     senao
          escreval("  P3  \  /  \  /  \  /")
          contador<-contador+1
     fimse

     escreval("              \______\______\______\/    \/    \/")
     escreval("               \      \      \      \    /\    /")

     se (p_usada[4]=verdadeiro)entao
        escreva("                \  ",vetor_marcado[contador],"   \")
        contador<-contador+1
     senao
          escreva("                \  P4  \")
          contador<-contador+1
     fimse

     se (p_usada[5]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  \")
        contador<-contador+1
     senao
          escreva("  P5  \")
          contador<-contador+1
     fimse

     se (p_usada[6]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  \  /  \  /")
        contador<-contador+1
     senao
          escreval("  P6  \  /  \  /")
          contador<-contador+1
     fimse

     escreval("                 \______\______\______\/    \/")
     escreval("                  \      \      \      \    /")

     se (p_usada[7]=verdadeiro)entao
        escreva("                   \  ",vetor_marcado[contador],"   \")
        contador<-contador+1
     senao
          escreva("                   \  P7  \")
          contador<-contador+1
     fimse

     se (p_usada[8]=verdadeiro)entao
        escreva("   ",vetor_marcado[contador],"  \")
        contador<-contador+1
     senao
          escreva("  P8  \")
          contador<-contador+1
     fimse

     se (p_usada[9]=verdadeiro)entao
        escreval("   ",vetor_marcado[contador],"  \  /")
        contador<-contador+1
     senao
          escreval("  P9  \  /")
          contador<-contador+1
     fimse

     escreval("                    \______\______\______\/")
fimse

se(((jogadas=3)ou(jogadas=6)ou(jogadas=9))e(tipo_partida="2"))entao
     escreval("                     _____________________")
     escreval("                    /      /      /      /\")
     escreval("                   /      /      /      /  \")

     se (p_usada[3]=verdadeiro)entao
          escreval("                  /______/______/______/ ",vetor_marcado[3],"  \")
          escreval("                 /      /      /      /\    /\")
          escreval("                /      /      /      /  \  /  \")
     senao
          escreval("                  /______/______/______/ P  \")
          escreval("                 /      /      /      /\  3 /\")
          escreval("                /      /      /      /  \  /  \")
     fimse

     se ((p_usada[2]=verdadeiro)e(p_usada[6]=verdadeiro))entao
        escreval("               /______/______/______/ ",vetor_marcado[2],"  \/ ",vetor_marcado[6],"  \")
        escreval("              /      /      /      /\    /\    /\")
        escreval("             /      /      /      /  \  /  \  /  \")
     senao
          se (p_usada[2]=verdadeiro)entao
          escreva("               /______/______/______/ ",vetor_marcado[2])
          senao
          escreva("               /______/______/______/ P")
          fimse

          se ((p_usada[2]=falso)e(p_usada[6]=verdadeiro))entao
          escreval("  \/ ",vetor_marcado[6],"  \")
          escreval("              /      /      /      /\  2 /\    /\")
          escreval("             /      /      /      /  \  /  \  /  \")
          fimse
          
          se ((p_usada[2]=verdadeiro)e(p_usada[6]=falso))entao
          escreval("  \/ P  \")
          escreval("              /      /      /      /\    /\  6 /\")
          escreval("             /      /      /      /  \  /  \  /  \")
          fimse
          
          se ((p_usada[2]=falso)e(p_usada[6]=falso))entao
          escreval("  \/ P  \")
          escreval("              /      /      /      /\  2 /\  6 /\")
          escreval("             /      /      /      /  \  /  \  /  \")
          fimse
     fimse

     se ((p_usada[1]=verdadeiro)e(p_usada[5]=verdadeiro)e(p_usada[9]=verdadeiro))entao
          escreval("            /______/______/______/ ",vetor_marcado[1],"  \/ ",vetor_marcado[5],"  \/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\    /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
     senao
          se (p_usada[1]=verdadeiro)entao
          escreva("            /______/______/______/ ",vetor_marcado[1],"  \")
          senao
          escreva("            /______/______/______/ P  \")
          fimse
          
          se (p_usada[5]=verdadeiro)entao
          escreva("/ ",vetor_marcado[5],"  \")
          senao
          escreva("/ P  \")
          fimse

          se ((p_usada[1]=verdadeiro)e(p_usada[5]=falso)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\  5 /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=verdadeiro)e(p_usada[5]=verdadeiro)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\    /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=verdadeiro)e(p_usada[5]=falso)e(p_usada[9]=verdadeiro))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \    /\  5 /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=verdadeiro)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\    /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=verdadeiro)e(p_usada[9]=verdadeiro))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\    /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=falso)e(p_usada[9]=verdadeiro))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\  5 /\    /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse

          se ((p_usada[1]=falso)e(p_usada[5]=falso)e(p_usada[9]=falso))entao
          escreval("/ ",vetor_marcado[9],"  \")
          escreval("            \      \      \      \  1 /\  5 /\  9 /")
          escreval("             \      \      \      \  /  \  /  \  /")
          fimse
     fimse

     se ((p_usada[4]=verdadeiro)e(p_usada[8]=verdadeiro))entao
          escreval("              \______\______\______\/ ",vetor_marcado[4],"  \/ ",vetor_marcado[8],"  \/")
          escreval("               \      \      \      \    /\    /")
          escreval("                \      \      \      \  /  \  /")
     senao
          se (p_usada[4]=verdadeiro)entao
          escreva("              \______\______\______\/ ",vetor_marcado[4])
          senao
          escreva("              \______\______\______\/ P")
          fimse

          se ((p_usada[4]=falso)e(p_usada[8]=verdadeiro))entao
          escreval("  \/ ",vetor_marcado[8],"  \/")
          escreval("               \      \      \      \  4 /\    /")
          escreval("                \      \      \      \  /  \  /")
          fimse

          se ((p_usada[4]=verdadeiro)e(p_usada[8]=falso))entao
          escreval("  \/ P  \/")
          escreval("               \      \      \      \    /\  8 /")
          escreval("                \      \      \      \  /  \  /")
          fimse

          se ((p_usada[4]=falso)e(p_usada[8]=falso))entao
          escreval("  \/ P  \/")
          escreval("               \      \      \      \  4 /\  8 /")
          escreval("                \      \      \      \  /  \  /")
          fimse
     fimse
     
     se (p_usada[7]=verdadeiro)entao
          escreval("                 \______\______\______\/ ",vetor_marcado[7],"  \/")
          escreval("                  \      \      \      \    /")
          escreval("                   \      \      \      \  /")
          escreval("                    \______\______\______\/")
     senao
          escreval("                 \______\______\______\/ P  \/")
          escreval("                  \      \      \      \  7 /")
          escreval("                   \      \      \      \  /")
          escreval("                    \______\______\______\/")
     fimse

fimse
fimprocedimento

//////////////////////////analiza o vencedor//////////////////////////
procedimento verificap1()
inicio
      fim_analize<-verdadeiro
      jogadas<-10
      v1<-v1+1
      escolhida<-3
      repita
            limpatela
            se(ativa_3D=1)entao
            tabuleiro3D()
            senao
            tabuleiro()
            fimse
            escreva(maiusc(player1),maiusc(" venceu a partida!"))
            escreval("")
            escreval("deseja iniciar uma nova partida? [S/N]")
            leia(nova_partida)
            se (nova_partida="s") entao
               limpatela
            fimse
            se (nova_partida="n")entao
                 fim<-2
            fimse
      ate (nova_partida="s") ou (nova_partida="n")
fimprocedimento

procedimento verificap2()
inicio
      fim_analize<-verdadeiro
      jogadas<-10
      v2<-v2+1
      escolhida<-3
      repita
            limpatela
            se(ativa_3D=1)entao
            tabuleiro3D()
            senao
            tabuleiro()
            fimse
            escreva(maiusc(player2),maiusc(" venceu a partida!"))
            escreval("")
            escreval("deseja iniciar uma nova partida? [S/N]")
            leia(nova_partida)
            se (nova_partida="s") entao
               limpatela
            fimse
            se (nova_partida="n")entao
                 fim<-2
            fimse
      ate (nova_partida="s") ou (nova_partida="n")
fimprocedimento

procedimento analize()
inicio
/////////////////////// <PLAYER 1 GANHA LINHA> \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   se ((vetor_marcado[1]="X") e (vetor_marcado[2]="X") e (vetor_marcado[3]="X") e (fim_analize=falso)) entao
         verificap1()
   fimse
   se ((vetor_marcado[4]="X") e (vetor_marcado[5]="X") e (vetor_marcado[6]="X") e (fim_analize=falso)) entao
      verificap1()
   fimse
   se ((vetor_marcado[7]="X") e (vetor_marcado[8]="X") e (vetor_marcado[9]="X") e (fim_analize=falso)) entao
      verificap1()
   fimse
/////////////////////// <PLAYER 1 GANHA COLUNA> \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   se ((vetor_marcado[1]="X") e (vetor_marcado[4]="X") e (vetor_marcado[7]="X") e (fim_analize=falso)) entao
      verificap1()
   fimse
   se ((vetor_marcado[2]="X") e (vetor_marcado[5]="X") e (vetor_marcado[8]="X") e (fim_analize=falso)) entao
      verificap1()
   fimse
   se ((vetor_marcado[3]="X") e (vetor_marcado[6]="X") e (vetor_marcado[9]="X") e (fim_analize=falso)) entao
      verificap1()
   fimse
/////////////////////// <PLAYER 1 GANHA DIAGONAL> \\\\\\\\\\\\\\\\\\\\\\\\\\\\
   se ((vetor_marcado[1]="X") e (vetor_marcado[5]="X") e (vetor_marcado[9]="X") e (fim_analize=falso)) entao
      verificap1()
   fimse
   se ((vetor_marcado[3]="X") e (vetor_marcado[5]="X") e (vetor_marcado[7]="X") e (fim_analize=falso)) entao
      verificap1()
   fimse

/////////////////////// <PLAYER 2 GANHA LINHA> \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   se ((vetor_marcado[1]="O") e (vetor_marcado[2]="O") e (vetor_marcado[3]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
   se ((vetor_marcado[4]="O") e (vetor_marcado[5]="O") e (vetor_marcado[6]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
   se ((vetor_marcado[7]="O") e (vetor_marcado[8]="O") e (vetor_marcado[9]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
/////////////////////// <PLAYER 2 GANHA COLUNA> \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   se ((vetor_marcado[1]="O") e (vetor_marcado[4]="O") e (vetor_marcado[7]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
   se ((vetor_marcado[2]="O") e (vetor_marcado[5]="O") e (vetor_marcado[8]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
   se ((vetor_marcado[3]="O") e (vetor_marcado[6]="O") e (vetor_marcado[9]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
/////////////////////// <PLAYER 2 GANHA DIAGONAL> \\\\\\\\\\\\\\\\\\\\\\\\\\\\
   se ((vetor_marcado[1]="O") e (vetor_marcado[5]="O") e (vetor_marcado[9]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
   se ((vetor_marcado[3]="O") e (vetor_marcado[5]="O") e (vetor_marcado[7]="O") e (fim_analize=falso)) entao
      verificap2()
   fimse
fimprocedimento

inicio
repita
limpatela
escreval("*Seletor De Dificuldade!")
escreval("*3D Disponivel!")
escreval("*IA esta bem desenvolida cuidado!")
escreval("*Não use cheat!!!")
escreval("")
escreval("========================")
escreval("JOGO DA VELHA")
escreval("========================")
escreval("")

escreval("Qual tipo de partida deseja jogar[1/2]?")
escreval("")
escreval("1:PLAYER X CPU")
escreval("2:PLAYER X PLAYER")
escreval("")
escreva("TIPO:")
leia(tipo_partida)
  //tipo_partida<-"1"
  //cheat<-verdadeiro

se (tipo_partida="1")entao
limpatela
pXcpu()
fimse

se (tipo_partida="2")entao
limpatela
pXp()
fimse
ate((tipo_partida="1")ou(tipo_partida="2"))
fimalgoritmo


