algoritmo "Salario"
// Função :
// Autor :
// Data : 11/11/2015
// Seção de Declarações 
var
   horaTrabalhada, horaAula, INSS, salario: real


inicio
// Seção de Comandos 
   escreva("Informe o valor da hora de aula: ")
   leia(horaAula)
   escreva("Informe as horas trabalhadas: ")
   leia(horaTrabalhada)
   escreva("Informe o persentual de desconto do INSS: ")
   leia(INSS)
   salario <- (horaAula * horaTrabalhada * (100-INSS) )/100
   escreva("O salario liquido do professor é ", salario)
   
fimalgoritmo
