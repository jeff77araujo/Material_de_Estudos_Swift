//
//  ViewController.swift
//  Decodable
//
//  Created by Jefferson Oliveira de Araujo on 03/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getTrips()
    }
    
    func getTrips() {
        guard let json = TripAPI.getTrip() else { return }
        guard let jsonData = Trip.convertListForData(json) else { return }
        
        guard let listTrip = Trip.decodableTrip(jsonData) else  { return }
        
        for trip in listTrip {
            print(trip.title)
        }
        

        
//        let listTrip = Trip().decodable(json)
//
//        for trip in listTrip {
//            print(trip.title)
//        }
    }
}

