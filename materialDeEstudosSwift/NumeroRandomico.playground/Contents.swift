import UIKit

// MARK: NUMERO RANDOMICO

let numberRandom = Int(arc4random_uniform(10))
print(numberRandom)

var newNumberRandom = Int.random(in: 0..<10)
print(newNumberRandom)

// MARK: SORTEAR OBJETO RANDOMICO

let listaMusic = ["Guns N Roses", "Metallica", "AC/DC"]
print(listaMusic)
print(listaMusic.randomElement())

// MARK: ALTERAR VALORES VARIAVEIS BOOLEANAS

var selecionado = false
print(selecionado) // false
selecionado.toggle() // toogle() alterna os valores
print(selecionado) // true depois
selecionado.toggle()
print(selecionado) // false novamente

// if else implicito
var cell = selecionado ? print("Valor true") : print("Valor false")

// MARK: ENBARALHAR ELEMENTOS LISTA

var musicasEmbaralhadas = listaMusic.shuffled()
print(musicasEmbaralhadas)


