//
//  ItemManager.swift
//  Stone - Swift Test
//
//  Created by Lucas Pinto on 20/03/22.
//

import Foundation


struct ItemManager {
    
    enum AlbumsFetcherError: Error {
            case invalidURL
            case missingData
        }
    

    
    func asyncGetData() async throws -> [ItemModel] {
        
        guard let url = URL(string: "https://raw.githubusercontent.com/stone-pagamentos/desafio-mobile/master/store/products.json")
        else { throw AlbumsFetcherError.invalidURL }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let itunesResult = try JSONDecoder().decode([ItemModel].self, from: data)
        return itunesResult
    }
}
    
