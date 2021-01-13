//
//  Webservice.swift
//  Stockify
//
//  Created by Riad Mohamed on 13/01/2021.
//

import Foundation

class Webservice {
    func getStocks(completion: @escaping ([Stock]?) -> Void ) {
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
            fatalError("Error creating a link from string")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let safeData = data, error == nil else {
                fatalError("Networking failed.")
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: safeData)
            stocks == nil ? completion(nil) : completion(stocks)
        }.resume()
    }
}
