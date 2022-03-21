//
//  ItemManager.swift
//  Stone - Swift Test
//
//  Created by Lucas Pinto on 20/03/22.
//

import Foundation


struct ItemManager {
    
    func getData() {
        
        guard let url = URL(string: "https://raw.githubusercontent.com/stone-pagamentos/desafio-mobile/master/store/products.json")
        else { return }
        
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("There was an error")
            } else {
                let jsonRes = parseJSON(data!)
            }
        }.resume()
        
    
    }
    
    func parseJSON (_ data: Data) -> String? {
        
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode([ItemModel].self, from: data)
            for person in decodedData {
                print(person)
            }
            return nil
        } catch {
            return nil
        }
    }
}
