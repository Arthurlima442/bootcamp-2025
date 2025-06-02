//
//  main.swift
//  Aula Arthur
//
//  Created by Arthur Lima on 15/04/25.
//

import Foundation

print("Hello, World!")


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

// Operadores Aritmeticos

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
var minhaIdadeInt: Double? = Double(minhaIdadeString)
print(minhaIdadeInt ?? 0.0)


// Opcionais
// As variaveis opcionais são muito ultilizadas no nosso dia a dia. Essas variaveis sempre terão 2 estados, um com valor REAL (existente) ou com NIL (valor nulo)
// OBS: MIL NÃO É ZERO -> NIL É NULO !!!!!!!!

var minhaIdade: Int?
minhaIdade = nil
print(minhaIdade ?? 0)
minhaIdade = nil
print(minhaIdade ?? 0)


var apelido: String? = "lima"
print(apelido ?? "não tem valor")
apelido = nil
print(apelido ?? "o valor é nil")


var precoString: String = "10.a"
var precoDouble: Double = Double(precoString) ?? 5
print(precoDouble)

var valorInt: Int? = 20
var valorString: String = String(valorInt ?? 0)
print(valorString)

// Constante -> let
// Quando ultilizarmos cada caso ?
// Sempre crie uma CONSTANTE ( LET )
// Caso precise alterar, fique tranquilo, o compilador vai te avisar, e é so você pressionar um FIX

let meuNomeHoje: String =  "Arthur"



// MARK: - Exercicios


// MARK: Exercício 1: Formatação de Strings
// Declare uma variável produto do tipo String e atribua a ela o valor "Notebook". Declare outra variável preco do tipo Double e atribua a ela o valor 3999.99. Formate e imprima uma frase que diga "O produto Notebook custa R$ 3999.99".

var produto: String = "Notebook"
var preco : Double = 3999.99
print("O produto \(produto) custa R$ \(preco) reais")


 

// MARK: Exercício 2: Média de Três Números
// Declare três variáveis com números inteiros. Calcule e imprima a média desses números.
// print("Média dos três números: \(variavel)")
//var media = (number1 + number2 + number3) / 3

var numero1: Int = 20
var numero2: Int = 15
var numero3: Int = 30
valorInt = (numero1 + numero2 + numero3) / 3
print("media dos tres numeros \(valorInt ?? 0)")




// MARK: Exercício 3: Concatenação de Strings
// Declare duas variáveis de tipo String para o nome e sobrenome de uma pessoa. Concatene as duas strings em uma terceira variável e imprima o nome completo no console.
// print("Nome completo: \(variavel)")


var nome: String = "Arthur"
var sobrenome: String = "Lima"
var nomeCompleto: String = "\(nome) \(sobrenome)"
print(nomeCompleto)


// MARK: Exercício 4: Conversão de Tipagem
// Declare uma variável idadeString com o valor "25". Converta essa string para um valor do tipo Int. Em seguida, declare uma variável alturaString com o valor "1.75" e converta-a para um valor do tipo Double. Imprima ambos os valores convertidos.
// print("Idade: \(variavel)")
// print("Altura: \(variavel)")

var idadeString: String = "25"
var alturaString: String = "1.75"
var idadeInt: Int = Int(idadeString) ?? 0
var alturaDouble: Double = Double(alturaString) ?? 0
print("idade: \(idadeInt) ")
print("altura: \(alturaDouble) ")



// MARK: Exercício 5: Operações Aritméticas
// Declare duas variáveis do tipo Float, numeroA e numeroB, com valores de sua escolha. Calcule e imprima a soma, subtração, multiplicação e divisão desses valores.
//print("Soma: \(variavel)")
//print("Subtração: \(variavel)")
//print("Multiplicação: \(variavel)")
//print("Divisão: \(variavel)")

var numeroA: Float = 10.555
var numeroB: Float = 15.555
print(numeroA + numeroB)
print(numeroA - numeroB)
print(numeroA * numeroB)
print(numeroA / numeroB)



// MARK: Exercício 6: Conversão de Tipagem de Float para Int
// Declare uma variável pesoFloat do tipo Float e atribua a ela o valor 70.5. Converta essa variável para o tipo Int e imprima o valor convertido.
//print("Peso como Int: \(variavel)")

var pesoFloat: Float = 70.5
var pesoInt: Int = Int(pesoFloat)
print(pesoInt)


// MARK: Exercício 7: Divisão de Conta
// Declare uma variável totalConta do tipo Double com o valor da conta de um restaurante. Declare uma variável numeroDePessoas do tipo Int com o número de pessoas que dividirão a conta. Calcule e imprima quanto cada pessoa deve pagar.
//print("Cada pessoa deve pagar: R$ \(variavel)")

var totalConta: Double = 95.5
var numeroDePessoas: Int = 4

print(totalConta / Double(numeroDePessoas))

var valor: Double = totalConta
print("Cada pessoa deve pagar: R$ \(valor)")



// MARK: Exercício 8: Calculadora de IMC
// Declare variáveis peso e altura do tipo Double. Calcule e imprima o Índice de Massa Corporal (IMC) usando a fórmula: IMC = peso / (altura * altura).
//print("O IMC é: \(variavel)")

var peso: Double =  110.10
var altura: Double = 1.90
var imc = peso / (altura * altura)
print("O IMC é: \(imc)")


// MARK: Exercício 9: Segundos em um Ano
// Calcule e imprima o número de segundos em um ano (considere um ano com 365 dias).
//print("Número de segundos em um ano: \(variavel)")

var segundoNoDia: Int = 24 * 60 * 60
var segundoNoAno: Int = 365 * segundoNoDia
print("Segundo em 365 dias: \(segundoNoAno) segundos")


// MARK: Exercício 10: Comparação de Números
// Declare duas variáveis primeiroNumero e segundoNumero do tipo Int. Verifique se numero1 é maior que numero2 e imprima o resultado.
// print("O primeiro número é maior que o segundo: \(variavel)")

var primeroNumero: Int = 4
var segundoNumero: Int = 5
var resultado: Bool = primeroNumero > segundoNumero
print("O primeiro número é maior que o segundo: \(resultado)")



