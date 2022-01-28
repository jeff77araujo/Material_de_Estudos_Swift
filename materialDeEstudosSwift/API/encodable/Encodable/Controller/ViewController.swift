//
//  ViewController.swift
//  Encodable
//
//  Created by Jefferson Oliveira de Araujo on 02/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteTrip()
    }
    
    func favoriteTrip() {
        let trip = Trip(id: 1, title: "Cancun - Mexico", quantDay: 10, price: "6.500,00", location: "Quintana Roo")
        
        let tripEncoded = try? JSONEncoder().encode(trip)
        guard let tripData = tripEncoded else { return }
        
        if let json = String(data: tripData, encoding: .utf8) {
            print(json)
        }
        
//        let parameters: [String: Any] = [
//            "id": trip.id,
//            "title": trip.title,
//            "quantDay": trip.quantDay,
//            "price": trip.price,
//            "location": trip.location
//        ]
//
//        print(parameters)
    }


}

