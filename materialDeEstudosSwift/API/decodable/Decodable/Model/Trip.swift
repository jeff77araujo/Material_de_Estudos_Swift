//
//  Trip.swift
//  Decodable
//
//  Created by Jefferson Oliveira de Araujo on 16/12/21.
//

import Foundation


class Trip: NSObject, Decodable {
    
    enum CodingKeys: String, CodingKey {
        case id, title, quantDay = "quant_day", price, location
    }
    
//    MARK: ATRIBUTOS
    let id: Int
    let title: String
    let quantDay: Int
    let price: String
    let location: String
    
//    MARK: INIT
    init(id: Int, title: String, quantDay: Int, price: String, location: String) {
        self.id = id
        self.title = title
        self.quantDay = quantDay
        self.price = price
        self.location = location
    }
    
    class func convertListForData(_ json: [[String:Any]]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }
    
    class func decodableTrip(_ jsonData: Data) -> [Trip]? {
        do {
            return try JSONDecoder().decode([Trip].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
//    convenience init() {
//        self.init(id: 0, title: "", quantDay: 0, price: "", location: "")
//    }
    
////    MARK: METODOS
//
//    func decodable(_ json: [[String:Any]]) -> [Trip] {
//        var listTrip: [Trip] = []
//
//        for trip in json {
//            guard let id = trip["id"] as? Int else {
//                print("error na conversão id para Int")
//                return listTrip
//            }
//
//            guard let title = trip["title"] as? String else {
//                print("error na conversão title para String")
//                return listTrip
//            }
//
//            guard let quantDay = trip["quant_day"] as? Int else {
//                print("error na conversão quant_day para Int")
//                return listTrip
//            }
//
//            guard let price = trip["price"] as? String else {
//                print("error na conversão price para Int")
//                return listTrip
//            }
//
//            guard let location = trip["location"] as? String else {
//                print("error na conversão location para Int")
//                return listTrip
//            }
//
//            let newtrip = Trip(id: id, title: title, quantDay: quantDay, price: price, location: location)
//            listTrip.append(newtrip)
//        }
//        return listTrip
//    }
}
