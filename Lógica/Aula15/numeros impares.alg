algoritmo "semnome"
// Função :
// Autor :
// Data : 18/11/2015
// Seção de Declarações
var
cc: caracter
i, f, c : inteiro
inicio

c<- 0

enquanto (c = 0) faca
   escreva("Informe o primeiro valor: ")
   leia(i)
   escreva("Informe o segudo valor: ")
   leia(f)
   se (i > f) entao
      escreval("Digite primeiro o menor valor e por segundo o maior valor. ")
   senao
      enquanto ( i <= f ) faca
         se ( i % 2 <> 0) entao
            escreva(i," ")
         fimse
         i <- i +1
      fimenquanto

   fimse
   escreval("")
   escreva("Digite S para sair: ")
   leia(cc)
   se cc = "S" entao
      c<-1
   fimse

fimenquanto
fimalgoritmo
