//
//  Avaliador.swift
//  Leilao
//
//  Created by Alura Laranja on 04/05/18.
//  Copyright © 2018 Alura. All rights reserved.
//

import Foundation

class Avaliador {
    
    private var maiorDeTodos = Double.leastNonzeroMagnitude
    private var menorDeTodos = Double.greatestFiniteMagnitude
    private var maiores: [Lance] = []
    
    func avalia(leilao: Leilao) {
        guard let lances = leilao.lances else { return }
        
        for lance in lances {
            if lance.valor > maiorDeTodos {
                maiorDeTodos = lance.valor
            }
            // else
            if lance.valor < menorDeTodos {
                menorDeTodos = lance.valor
            }
        }
        
        pegaOsMaioresLancesNoLeilao(leilao)
    }
    
    func maiorLance() -> Double {
        return maiorDeTodos
    }
    
    func menorLance() -> Double {
        return menorDeTodos
    }
    
    func tresMaiores() -> [Lance] {
        return maiores
    }
    
    func pegaOsMaioresLancesNoLeilao(_ leilao: Leilao) {
        guard let lances = leilao.lances else { return }
        
        maiores = lances.sorted(by: { (lista1, lista2) -> Bool in
            return lista1.valor > lista2.valor
        })
        
//        let maioresLances = maiores[0..<3]
        let maioresLances = maiores.prefix(3)
        maiores = Array(maioresLances)
    }
    
}
