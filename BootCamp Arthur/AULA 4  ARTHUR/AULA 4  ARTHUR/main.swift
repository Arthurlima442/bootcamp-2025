//
//  main.swift
//  AULA 4  ARTHUR
//
//  Created by Barbara Brigolin on 17/04/25.
//

import Foundation

// MARK: FUNÇÕES / MÉTODOS
// Uma função é um bloco de codigos que executa algo e que pode ser reutilizavel quando quiser.
// Uma função executa tudo aquilo que está dentro do bloco de codigo ( entre as chaves {})
// Uma função tem 3 tipos
// Função sem paramentro e sem retorno
// Função com parametro e sem retorno
// Função com parametro e com retorno
// Como criar uma função:
// Informe a palavra reservada FUNC e na sequencia informe o nome da função ( o nome da função é uma das partes mais importantes da função, pois ela tem que deixar claro exatamente oque ela vai executar..
// Abra e feche os parenteses, caso tenha parenteses os informe, caso contrario não..
// ->
// Abra e feche as chaves


// MARK: Função sem retorno e sem parametro

func exibirNomes() {
    print("Meu nome é Arthur")
    print("Meu nome é Arthur")
    print("Meu nome é Arthur")
    print("Meu nome é Arthur")
}
//exibirNomes()


func ligarMotor() {
    print("O motor está ligado")
    
}
//ligarMotor()


// Mark: Função com parametro sem retorno

func soma(valor1: Int, valor2: Int){
    let somatotal = valor1 + valor2
    print("O resultado da soma é: \(somatotal)")
}
//soma(valor1: 10, valor2: 20)


func nomeCompleto(primeiroNome: String, segundoNome: String) {
    //    let nomeCompletoConcatenacao: String = primeiroNome + " " + segundoNome
    let nomeCompletoInterpolacao: String = "\(primeiroNome) \(segundoNome)"
    print("Meu nome completo é: \(nomeCompletoInterpolacao)")
}


//nomeCompleto(primeiroNome:" Arthur", segundoNome: "Lima")


func descricaoEstudo(nome: String, aula: String, professor: String, nota: Int, estouIndoBem: Bool){
    print("Meu nome é: \(nome), estudo desenvolvimento em: \(aula), meu professor é o renomado: \(professor). Minha nota foi de \(nota) estou indo bem: \(estouIndoBem)")
}

//descricaoEstudo(nome: "Arthur", aula: "IOS", professor: "Caio Fabrini", nota: 8, estouIndoBem: true)


func minhaEsposa(nome: String, idade: Int, nacionalidade: String, notaDeBeleza: Int, amoEla: Bool) {
    print("Nome dela é: \(nome), ela tem: \(idade) anos, ela é:\(nacionalidade). Ela tem uma beleza de nota: \(notaDeBeleza) será que eu amo ela: \(amoEla) muitooo")
}
//minhaEsposa(nome:"Thamires", idade: 22, nacionalidade:"Brasil", notaDeBeleza: 10000000, amoEla: true)


func minhaMae(nome: String, idade: Int, nacionalidade: String, profissao: String, elaEfoda:Bool, boaMae: Bool){
    print("Nome dela é: \(nome), tem: \(idade) anos,nasceu no: \(nacionalidade),ela atualmente trabalha na area da: \(profissao).\(elaEfoda) muitooooo,\(boaMae) a melhor que eu poderia ter ")
}
//minhaMae(nome: "Renata", idade: 49, nacionalidade:"brasil", profissao:"ADM(RH)", elaEfoda:true, boaMae:true)


// Mark: Função com retorno e sem parametro

func meuNomeE() -> String{
    return "Arthur"
}

let meuNomeString: String = meuNomeE()
//print(meuNomeString)

// Mark: Função com retorno e com parametro

func divisao(valor1: Double, valor2: Double) -> Double {
    let valorTotal = valor1 / valor2
    return valorTotal
}
let resultadoDivisao: Double = divisao(valor1: 100, valor2: 10)
//print("O resultado da divisao é de: \(resultadoDivisao)")


func maiorNumero(valor1: Double, valor2: Double) -> String {
    let frase = "O valor1 é maior que o valor2: \(valor1 > valor2)"
    return frase
}

let fraseMaiorNumero: String = maiorNumero(valor1: 100, valor2: 101)
//print(fraseMaiorNumero)
