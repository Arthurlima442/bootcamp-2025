import UIKit

var greeting = "Hello, playground"

// Como criar uma Variavel:
// 1 passo: voce escreve a palavra Var.
// 2 passo: defina um nome para essa variavel ( ESSA É A PARTE MAIS IMPORTANTE DO SEU CODIGO).
// 3 passo: atribua um valor a variavel.


//String
// Sao variaveis/constantes que apresentam seu valor como forma de TEXTO
// Para criar uma variavel do tipo SPRING seu valor deve conter aspas duplas ""
// EX:
var carro = "fusion"


// Int
// São variaveis/constante que apresentam seu valor como números INTEIROS.
// Para criar uma variavel do tipo INT seu valor deve conter apenas números inteiros.

var potencia = 300
    
// Boll - Booleano
//São variaveis/constantes que apresentam seu valor como verdadeiro(True) ou falso (False)
var desconto: Bool = false
var estaNaPromocao: Bool = true

// Float/Double
// São variaveis/constantes que apresentam seu valor como numeros reias
// Para criar uma variavel do tipo Float/Double seu valor deve conter apenas números reias
// OBS: Sempre ultilizem o DOUBLE !!!!!

var numerosFloat: Float = 150.2736453829
var numeroDouble: Double = 150.2736453829
 
print(numeroDouble)
print(numerosFloat)

// Operadores Logicos

// Adição
var numeroAdicaoUm: Int = 500
var numeroAdicaoDois: Int = 200
var resultadoAdicao: Int = numeroAdicaoUm + numeroAdicaoDois
print (resultadoAdicao)

// Subtração
var numeroSubtracaoUm: Int = 400
var numeroSubtracaoDois: Int = 100
var resultadoSubtracao: Int = numeroSubtracaoUm - numeroSubtracaoDois
print (resultadoSubtracao)

// Multiplicação
var numeroMutiplicacaoUm: Int = 10
var numeroMutiplicacaoDois: Int = 50
var resultadoMultiplicacao: Int =  numeroMutiplicacaoUm * numeroMutiplicacaoDois
print (resultadoMultiplicacao)

// Divisão
var numeroDivisaoUm: Int = 50
var numeroDivisaoDois: Int = 10
var resultadoDivisao: Int = numeroDivisaoUm / numeroDivisaoDois
print (resultadoDivisao)

// Concantenação
// É quando juntamos valores com base em uma ADIÇÃO.

var frase1: String = "Olá, qual a sua idade: "
var frase2: Int = 23
var frase3: String = " anos"

var resultadoConcatenacao: String = frase1 + String(frase2) + frase3
print (resultadoConcatenacao)

// Interpolação
// Com a interpolação ja converte o tipo de forma direta para STRING.
// Para ultilizar- la é muito simples, basta colocar no local de sua preferencia a \() e dentro do parentes o seu valor para apresentar na STRING.

var resultadointerpolacao: String = "Olá, qual a sua idade: \(frase2) anos"
print(resultadointerpolacao)

var valorTotalMercado: Double = 1000
var resultadoMercado: String = "O valor total foi de: R$ \(valorTotalMercado) reais"
print(resultadoMercado)

let countMembers = 668
let frase = "Group  \(countMembers) member"

// Converter Tipagens

// Converter Int, Double, Float para String.
// Quando quereos converter um tipo de Int, Double, Float para String, você precisa apenas informar o valor dentro dos parenteses:
// Segue o EX abaixo:

var umValorIntParaString: Int = 100
var textoInt: String = String(umValorIntParaString)
print(textoInt)

// String -> para INT
// Todas as vezes que for converter uma string para qualquer tipagem ela SEMPRE será opcional.


var minhaIdadeString: String = "23.5j"
var minhaIdadeInt: Double = Double(minhaIdadeString) ?? 0
print (minhaIdadeInt)



// Como criar uma Variavel:
// 1 passo: voce escreve a palavra Var.
// 2 passo: defina um nome para essa variavel ( ESSA É A PARTE MAIS IMPORTANTE DO SEU CODIGO).
// 3 passo: atribua um valor a variavel.


//String
// Sao variaveis/constantes que apresentam seu valor como forma de TEXTO
// Para criar uma variavel do tipo SPRING seu valor deve conter aspas duplas ""
// EX:
var carro = "fusion"


// Int
// São variaveis/constante que apresentam seu valor como números INTEIROS.
// Para criar uma variavel do tipo INT seu valor deve conter apenas números inteiros.

var potencia = 300
    
// Boll - Booleano
//São variaveis/constantes que apresentam seu valor como verdadeiro(True) ou falso (False)
var desconto: Bool = false
var estaNaPromocao: Bool = true

// Float/Double
// São variaveis/constantes que apresentam seu valor como numeros reias
// Para criar uma variavel do tipo Float/Double seu valor deve conter apenas números reias
// OBS: Sempre ultilizem o DOUBLE !!!!!

var numerosFloat: Float = 150.2736453829
var numeroDouble: Double = 150.2736453829
 
print(numeroDouble)
print(numerosFloat)

// Operadores Logicos

// Adição
var numeroAdicaoUm: Int = 500
var numeroAdicaoDois: Int = 200
var resultadoAdicao: Int = numeroAdicaoUm + numeroAdicaoDois
print (resultadoAdicao)

// Subtração
var numeroSubtracaoUm: Int = 400
var numeroSubtracaoDois: Int = 100
var resultadoSubtracao: Int = numeroSubtracaoUm - numeroSubtracaoDois
print (resultadoSubtracao)

// Multiplicação
var numeroMutiplicacaoUm: Int = 10
var numeroMutiplicacaoDois: Int = 50
var resultadoMultiplicacao: Int =  numeroMutiplicacaoUm * numeroMutiplicacaoDois
print (resultadoMultiplicacao)

// Divisão
var numeroDivisaoUm: Int = 50
var numeroDivisaoDois: Int = 10
var resultadoDivisao: Int = numeroDivisaoUm / numeroDivisaoDois
print (resultadoDivisao)

// Concantenação
// É quando juntamos valores com base em uma ADIÇÃO.

var frase1: String = "Olá, qual a sua idade: "
var frase2: Int = 23
var frase3: String = " anos"

var resultadoConcatenacao: String = frase1 + String(frase2) + frase3
print (resultadoConcatenacao)

// Interpolação
// Com a interpolação ja converte o tipo de forma direta para STRING.
// Para ultilizar- la é muito simples, basta colocar no local de sua preferencia a \() e dentro do parentes o seu valor para apresentar na STRING.

var resultadointerpolacao: String = "Olá, qual a sua idade: \(frase2) anos"
print(resultadointerpolacao)

var valorTotalMercado: Double = 1000
var resultadoMercado: String = "O valor total foi de: R$ \(valorTotalMercado) reais"
print(resultadoMercado)

let countMembers = 668
let frase = "Group  \(countMembers) member"

// Converter Tipagens

// Converter Int, Double, Float para String.
// Quando quereos converter um tipo de Int, Double, Float para String, você precisa apenas informar o valor dentro dos parenteses:
// Segue o EX abaixo:

var umValorIntParaString: Int = 100
var textoInt: String = String(umValorIntParaString)
print(textoInt)

// String -> para INT
// Todas as vezes que for converter uma string para qualquer tipagem ela SEMPRE será opcional.


var minhaIdadeString: String = "23.5j"
var minhaIdadeInt: Double = Double(minhaIdadeString) ?? 0
print (minhaIdadeInt)








