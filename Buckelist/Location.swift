//
//  Location.swift
//  Buckelist
//
//  Created by Семен Куницын on 01.09.2022.
//

import Foundation
import CoreLocation

struct Location: Identifiable, Codable, Equatable {
    
    var id : UUID
    var name: String
    var description: String
    let latitude: Double
    let longtitude : Double
    
    var coordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
    }
    
    static let example  = Location(id: UUID(), name: "Buckingham Palace", description: "Queen lives with doggies", latitude: 51.501, longtitude: -0.141)
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
