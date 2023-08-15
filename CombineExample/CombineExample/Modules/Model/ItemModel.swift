//
//  ItemModel.swift
//  CombineExample
//
//  Created by Viktor Golovach on 15.08.2023.
//

import Foundation

struct ItemModel: Hashable, Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
}

enum ItemCategory: String {
    case man = "men's clothing"
    case women = "women's clothing"
}
