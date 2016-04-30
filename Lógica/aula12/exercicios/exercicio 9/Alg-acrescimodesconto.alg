algoritmo "acrescimodesconto"
// Função :
// Autor :
// Data : 11/11/2015
// Seção de Declarações 
var
 v1, v2, acrescimo, desconto: real
inicio
// Seção de Comandos 
escreva("Informe o primeiro valor")
leia(v1)
escreva("Informe o segundo valor")
leia(v2)
acrescimo <- v1 + ((v1/100)*30)
desconto <- v2 - ((v2/100)*25)
escreval("O primeiro valor com acrescimo é: ", acrescimo)
escreva ("O segundo valor com desconto é: ", desconto)
fimalgoritmo
