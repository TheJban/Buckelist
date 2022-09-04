
//
//  Result.swift
//  Buckelist
//
//  Created by Семен Куницын on 02.09.2022.
//

import Foundation

struct Result : Codable {
    let query : Query
}

struct Query : Codable {
    
    let pages: [Int: Page]
    
}

struct Page : Codable, Comparable {
    let pageid : Int
    let title : String
    let terms: [String: [String]]?
    
    var description: String {
        terms?["description"]?.first ?? "no description"
    }
    
    static func <(lhs: Page, rhs: Page) -> Bool {
        lhs.title < rhs.title
    }
    
    
}
