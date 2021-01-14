//
//  Stock.swift
//  Stockify
//
//  Created by Riad Mohamed on 13/01/2021.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
