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
                let jsonRes = try? JSONSerialization.jsonObject(with: data!, options: [] )
                print(jsonRes)
            }
        }.resume()
        
    
    }
}
