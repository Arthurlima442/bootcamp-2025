//
//  main.swift
//  POORevisao
//
//  Created by Barbara Brigolin on 19/05/25.
//

import Foundation


// Classe -> Classe é um objeto ou MODELO de um objeto
// Por exemplo um CASA
// TODO OBJETO pode ter AÇÕES (metodo == função)
// TODO OBJETO pode ter caracteristicas (são variaveis/constantes)

// Toda classe deve ser criada com a primeira letra em maiscula

class Casa {
    var cor: String = "Branca"
    var quantidadeDeQuartos: Int = 2
    var valorDoImovel: Double = 1000000
    
    func abrirPorta() {
        print("Porta Aberta")
    }
    
    func getQuantidadeDeQuartos() -> String {
        return "A quantidade de quartos são: \(quantidadeDeQuartos)"
    }
}

// Como acessar os valores de uma classe?
// Você precisa primeiramente criar o seu OBJETO!!!!
// Quando que meu objeto ganha vida?
// Quando ele é INSTANCIADO!! Ou seja, quando você abre e fecha parenteses!!! Ex: var minhaCasa: Casa = Casa()
// Para acessar então seus metodos OU propriedades você precisa do seu objeto, com isso é só precionar ponto e você já consegue
// acessar com facilidade Ex: minhaCasa.cor

let novaCasa: Casa = Casa()
//novaCasa.abrirPorta()
//print(novaCasa.cor)

var quantidadeDeQuartos = novaCasa.getQuantidadeDeQuartos()
//print(quantidadeDeQuartos)




class Animal {
    var nome: String = "Cavalo"
    var peso: Double = 3213
    var altura: Double = 123
    
    func correr() {
        print("O cavalo está correndo")
    }
}

//var horse: Animal?
//horse = Animal()
//print(horse?.altura ?? 0)

//var horse: Animal = Animal()
//print(horse.altura)
//
//horse.correr()


class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double

    
    init(nome: String, idade: Int, altura: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
    }
    
    func correr() {
        print("Correu 10km")
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", idade: 23, altura: 1.83)

print(caio.nome)
print(caio.idade)
print(caio.altura)
caio.correr()

var arthur: Pessoa = Pessoa(nome: "Arthur", idade: 23, altura: 1.90)

print(arthur.nome)
print(arthur.idade)
print(arthur.altura)



class Carro {
    let cor: String = "preto"
    let modelo: String = "Ferrari"
    let potencia: Int = 600
    let conversivel: Bool = true
    
    func abrirCapota() {
        print("abrindo capota")
    }
    func acionarTurbo() {
        print("turbo acionado")
    }
}
let veiculo: Carro = Carro()
print(veiculo.cor)
print(veiculo.modelo)
print(veiculo.potencia)
print(veiculo.conversivel)
veiculo.abrirCapota()
veiculo.acionarTurbo()



class Relogio {
    var marca: String
    var valor: Double
    var cor: String
    var falso: Bool
    
    init(marca: String, valor: Double, cor: String, falso: Bool) {
        self.marca = marca
        self.valor = valor
        self.cor = cor
        self.falso = falso
    }
    func acenderVisor() {
        print("visor acesso")
    }
}

var appleWatch: Relogio = Relogio (marca:"cassio", valor: 299, cor: "cromado", falso: true)
print(appleWatch.falso)
print(appleWatch.valor)
print(appleWatch.cor)



