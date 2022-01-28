//
//  Viagem.swift
//  Encodable
//
//  Created by Jefferson Oliveira de Araujo on 02/12/21.
//

import Foundation

class Trip: NSObject, Encodable {
    
    enum CodingKeys: String, CodingKey {
        case id, title, quantDay = "quantity_day", price, location
    }
    
    //     MARK: - Atributos
    let id: Int
    let title: String
    let quantDay: Int
    let price: String
    let location: String
    
    //    MARK: - Init
    init(id: Int, title: String, quantDay: Int, price: String, location: String) {
        self.id = id
        self.title = title
        self.quantDay = quantDay
        self.price = price
        self.location = location
    }
}
