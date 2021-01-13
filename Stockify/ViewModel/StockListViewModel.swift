//
//  StockListViewModel.swift
//  Stockify
//
//  Created by Riad Mohamed on 13/01/2021.
//

import Foundation

class StockListViewModel: ObservableObject {
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    var searchTerm: String = ""
    
    func load() {
        fetchStocks()
    }
    
    private func fetchStocks() {
        Webservice().getStocks { stocks in
            if let safeStocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = safeStocks.map(StockViewModel.init)
                }
            }
        }
    }
}
