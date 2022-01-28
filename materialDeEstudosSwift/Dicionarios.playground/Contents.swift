import UIKit

var alunos = ["Jeff": "Swift", "Miranda": "Java", "Mateus": "Java", "Raul": "Kotlin", "Taina": "Angular", "Igor": "Java"]
let novosAlunos = [ "Giovanna": "Swift", "Leticia": "Angular", "Jessica": "QA", "Jeff": "Kotlin"]

// MARK: JUNTAR OS DICIONÁRIOS
//let dicionario = [
//    "A": ["Amanda", "Adriano", "Alice"],
//    "M": ["Marta", "Mateus"]
//]

//novosAlunos.forEach({
//   if !alunos.keys.contains($0.key) {
//    alunos[$0.key] = $0.value
//   }
//})
//
//print(alunos)

// MARK: MELHOR SOLUÇÃO
alunos.merge(novosAlunos) { (alunos, novosAlunos) -> String in
    alunos
}
print(alunos)
// ------------------------------------------------------------------------------------------------------------------

// MARK: LISTAGEM POR ORDEM DA LETRA INICIAL DO NOME
//var dicionarioDeNomes: [String: [String]] = [:]
//for aluno in alunos {
//    if let caracter = aluno.key.first {
//        let prefixo = String(caracter)
//        if var listaDeNomes = dicionarioDeNomes[prefixo] {
//            listaDeNomes.append(aluno.key)
//            dicionarioDeNomes[prefixo] = listaDeNomes
//        } else {
//            dicionarioDeNomes[prefixo] = [aluno.key]
//        }
//    }
//}
//print(dicionarioDeNomes)

// MARK: MELHOR SOLUÇÃO
//var dicionarioDeNomes = Dictionary(grouping: alunos.keys, by: { $0.prefix(1)})
var dicionarioDeNomes = Dictionary(grouping: alunos.keys, by: { $0.prefix(2)})

print(dicionarioDeNomes)

// MARK: COMPARAR DICIONÁRIOS

let alunosDeAlgoritmos = [ "Jeff": 10, "Miranda": 8, "Mateus": 6, "Raul": 7, "Taina": 8, "Igor": 6]
let alunosDeMatematica = [ "Jeff": 9, "Miranda": nil, "Mateus": 7, "Raul": 3, "Taina": 5, "Igor": 9]

print(alunosDeAlgoritmos == alunosDeMatematica)


