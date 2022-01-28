//
//  TripAPI.swift
//  Decodable
//
//  Created by Jefferson Oliveira de Araujo on 03/12/21.
//

import Foundation

class TripAPI {
     class func getTrip() -> [[String:Any]]? {
        if let path = Bundle.main.url(forResource: "trip", withExtension: "json") {
            let json: Data = try! Data(contentsOf: path)
            do {
                let trips = try JSONSerialization.jsonObject(with: json, options: .allowFragments)
                let listTrips = trips as? [[String:Any]]
                return listTrips
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}
