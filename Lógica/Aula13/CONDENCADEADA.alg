algoritmo "CONDENCADEADO"
// Fun��o :
// Autor :
// Data : 13/11/2015
// Se��o de Declara��es 
var
 sal, salNovo: real

inicio
// Se��o de Comandos 
escreval("Digite o Salario:")
leia(sal)
se sal < 500 entao
   salNovo <- sal * 1.15
senao
     se sal <= 1000 entao
        salNovo <- sal * 1.10
     senao
          salNovo <- sal * 1.05
     fimse
fimse
escreva("O Salario com reajuste �: ", salNovo)

fimalgoritmo
