//
//  NetworkService.swift
//  CombineExample
//
//  Created by Viktor Golovach on 15.08.2023.
//

import Foundation

protocol NetworkServiceProtocol: AnyObject {
    func fetchManItems(by category: ItemCategory) async -> (Result<[ItemModel]?, Error>)
    
}

class NetworkService: NetworkServiceProtocol {
    
    let url = "https://fakestoreapi.com/products"
    
    func fetchManItems(by category: ItemCategory) async -> (Result<[ItemModel]?, Error>) {
        guard let url = URL(string: url) else {
            return .failure(NetworkErros.badUrl)
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let items = try JSONDecoder().decode([ItemModel].self, from: data)
            let sortedItems = items.filter({$0.category == category.rawValue})
            return .success(sortedItems)
        } catch {
            return .failure(error)
        }
    }
    
}

enum NetworkErros: String, Error {
case badUrl = "Bad URL"
}
