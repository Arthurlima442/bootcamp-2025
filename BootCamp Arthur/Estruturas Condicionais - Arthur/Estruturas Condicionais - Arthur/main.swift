//
//  main.swift
//  Estruturas Condicionais - Arthur
//
//  Created by Barbara Brigolin on 20/04/25.
//

import Foundation

// Mark: ESTRUTURAS CONDICIONAIS
// Tudo oq está na frente do "IF"significa que está realizando uma validação para verificar se é VERDADEIRO OU FALSO
// O sinal da para comparar a igualdade do Swift é ==
// else -> se não (caso Falso)
// IF sempre vai ser BOOL


if 1 + 1 == 2 {
    // Se cair no primeiro bloco de codigo significa que a condiçao é verdadeira
    //     print ("sim 1 + 1 é igual a 2)
} else {
    // Se cair no primeiro bloco de codigo significa que a condiçao é verdadeira
    // print("o valor está incorreto)
    
}

func validaMaiorIdade(idade: Int) {
    if idade >= 18 {
        print ("Usuario é maior de idade")
    } else {
        print( "Usuario é menor de idade")    }
}

//validaMaiorIdade(idade: 17)


// neste exemplo podemos fazer de 2 forma:
// validamos If socio == true ou apenas o if socio
// ambos sao a mesma coisa, deste modo é recomendado ultilizar apenas o if socio
// Se caso o valor total for maior que 1000, então imprima uma mensagem dizendo que ele "tem desconto", caso contrario imprima uma mensagem dizendo "tem desconto"..

func valorIngressoSocio (socio: Bool) -> Int {
    if socio {
        return 300
    } else {
        return 500
    }
}

func validaDesconto(valorTotal: String) {
    let valorDouble: Double = Double(valorTotal) ?? 0
    
    if valorDouble > 1000.0 {
        print("Tem desconto")
    } else {
        print("Sem desconto")
    }
}

//validaDesconto(valorTotal: "1001")


// && -> E -> todas as validaçoes tem que ser verdadeiras
// || -> ou -> se uma das validaçoes forem verdadeiras ele retorna true contrario false

// Crie um metodo para validar se o usuario pode comprar um carro ou nao. Para que ele possa compra um carro ele deve conter a carteira de motorista E ter no minimo 10000 mil reias, caso contrario, nao pode compra o carro

func compraCarro(carteiraDeMotorista: Bool, valorTotal: Double) {
    if carteiraDeMotorista && valorTotal >= 10000 {
        print("Pode comprar o carro")
    } else {
        print("Nao compra o carro !!")
    }
}
//compraCarro(carteiraDeMotorista: true, valorTotal: 10000)


// Se o usuario gastou mais de 1000 reais OU ele tem o cartao fidelidade ele tem desconto, caso contrario, sem desconto

func descontoLoja(gasto: Double, cartaoFidelidade: Bool) -> String {
    if gasto >= 1000 || cartaoFidelidade {
        return "Tem desconto de 10%"
    } else {
        return "Não tem desconto"
    }
}

let temDesconto = descontoLoja(gasto: 1000, cartaoFidelidade: false)
//print(temDesconto)

// Mark: Guard let -> Muito semelhante ao If Let, porem o guard let ele mata o metodo
// OBS: sempre que for ultilizar o guard let, voce precisa ao final da validaçao o ELSE { return }
// Caso voce esteja ultilizando o guard let dentro de um metodo de retorno, voce necessita retornar a sua respectiva tipagem !!!!!!

func validaDescontoGuardLet(valorTotal: String ) {
    guard let valorDouble: Double = Double(valorTotal) else {
        print("informar um valor numerico ")
        return
    }
    
    if valorDouble > 1000.0 {
        print("tem desconto")
    } else {
        print("sem desconto")
    }
}

//validaDescontoGuardLet(valorTotal: "1001")



// IF ternário
// Para criar o ternario vamos dividir em 5 partes

// 1 parte: deve conter uma validacao(bool) EX: 1 + 1 == 2
// 2 parte: deve informar o ? = 1 + 1 == 2 ?
// 3 parte: deve informar oque quer em caso VERDADEIRO = 1 + 1 == 2 ? print("Soma dos valores corretos")
// 4 parte: deve informar os : 1 + 1 == 2 ? print("Soma dos valores corretos") :
// 5 parte: deve informar oque voce quer em caso FALSO EX: 1 + 1 == 2 ? print("Soma dos valores corretos") : print("Soma dos valores incorretos")



func motorLigado (ligado: Bool) {
    //    if ligado {
    //        print("Motor ligado")
    //    } else {
    //        print("Motor desligado")
    //    }
    //    }
    
    ligado == true ? print("O motor esta ligado") : print("O motor esta desligado")
}

//motorLigado(ligado: false)


func calcularTarifaTaxi(distancia: Double) -> Double {
    let taxaFixa: Double = 4.0
    
    if distancia <= 5 {
        return taxaFixa + (distancia * 1.5)
    } else if distancia <= 10 {
        return taxaFixa + (distancia * 2.0)
    } else if distancia <= 15 {
        return taxaFixa + (distancia * 2.5)
    } else {
        return taxaFixa + (distancia * 3.0)
    }
}

//let valorTotalTaxi = calcularTarifaTaxi(distancia: 40 )
//print("O valor total é de R$ \(valorTotalTaxi) reais")




// PASSO A PASSO PARA CRIAR FUNÇÃO
// 1 - func
// 2 - nome da função
// 3 - parametro (caso tenha, se não deixar apenas abre e fecha parenteses)
// 4 - se tiver retorno, pode colocar

// func nomeDaFuncao(parametro1: String, parametro2: String) -> String { }

// funcao de retorno -> VOCÊ É OBRIGATORIO UTILIZAR O RETURNNNN!!!!
//  Para printar o valor de uma FUNÇÃO COM RETORNO:
// let nomeParaArmazenarOResultadoFunc = nomeDaFuncaoQueVcCriou(parametro1: "Oii", parametro2: "Testeee")
// print("resultado: \(nomeParaArmazenarOResultadoFunc)")


// SE CASO FOR A FUNÇÃO QUE NÃO TEM RETORNO??
// APENAS CHAMAR A FUNCÃO DIRETO!!!!
// Ex:     minhaFunc(nome: "Caio")
// SÓ ISSOOOOOOO!!!!!!


// OPERADORES ARITMETICOS:
// + SOMA
// - MENOS
// / DIVISÃO
// * MULTIPLICAÇÃO

// OPERADORES LOGICOS:
// && -> SIGNIFICA 'E' -> ELE É QUANDO AMBOS AS COMPARAÇÕES SÃO VERDADEIRAS!!
// || -> SIGNIFICA 'OU' -> ELE É QUANDO UMA DELES SE FOR VERDADEIRA, ELE JÁ CONSIDERA VERDADE!!
