//
//  StockViewModel.swift
//  Stockify
//
//  Created by Riad Mohamed on 13/01/2021.
//

import Foundation

struct StockViewModel {
    let stock: Stock
    
    var symbol: String {
        return self.stock.symbol.uppercased()
    }
    
    var description: String {
        return self.stock.desc
    }
    
    var price: String {
        return String(format: "%.2f", self.stock.price)
    }
    
    var change: String {
        return self.stock.change
    }
    
}
