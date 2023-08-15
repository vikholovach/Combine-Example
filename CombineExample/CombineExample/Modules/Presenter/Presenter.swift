//
//  Presenter.swift
//  CombineExample
//
//  Created by Viktor Golovach on 15.08.2023.
//

import UIKit

protocol ShopViewProtocol: AnyObject {
    func onFetchSuccess()
    func onFetchError(with error: Error)
}

protocol ShopViewPresenterProtocol: AnyObject {
    
    init(view: ShopViewProtocol, networkService: NetworkServiceProtocol)
    
    var items: [ItemModel]? {get set}
    
    func fetchManItems()
    func fetchWomenItems()
    
}


class ShopMainPresenter: ShopViewPresenterProtocol {
    
    var items: [ItemModel]?
    
    weak var view: ShopViewProtocol?
    var networkService: NetworkServiceProtocol!
    
    required init(view: ShopViewProtocol, networkService: NetworkServiceProtocol) {
        self.view = view
        self.networkService = networkService
    }
    
    
    func fetchManItems() {
        Task { [weak self] in
            guard let self = self else {return}
            let response = await networkService.fetchManItems(by: .man)
            DispatchQueue.main.async {
                switch response {
                case .success(let items):
                    self.items = []
                    self.items = items
                    self.view?.onFetchSuccess()
                case .failure(let error):
                    self.view?.onFetchError(with: error)
                }
            }
        }
    }
    
    func fetchWomenItems() {
        Task { [weak self] in
            guard let self = self else {return}
            let response = await networkService.fetchManItems(by: .man)
            DispatchQueue.main.async {
                switch response {
                case .success(let items):
                    self.items = []
                    self.items = items
                    self.view?.onFetchSuccess()
                case .failure(let error):
                    self.view?.onFetchError(with: error)
                }
            }
        }
    }
    
    
}
