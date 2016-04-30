algoritmo "OPERADORLOGICONAO"
// Função :
// Autor :
// Data : 13/11/2015
// Seção de Declarações
var
A,B,C,X : inteiro

inicio
// Seção de Comandos
escreval("Digite 3 numeros")
leia(A, B, X)
se nao( X > 5)  entao
   C <- (A + B) * X
senao
     C <- (A - B) * X
fimse
Escreval("O Valor de C é: ", C)
fimalgoritmo
