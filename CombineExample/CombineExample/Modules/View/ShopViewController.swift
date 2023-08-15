//
//  ShopViewController.swift
//  CombineExample
//
//  Created by Viktor Golovach on 15.08.2023.
//

import UIKit

class ShopViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //presenter
    var presenter: ShopViewPresenterProtocol!
    
    //dataSource
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Shop"
        
    }
}


extension ShopViewController: ShopViewProtocol {
    func onFetchSuccess() {
        
    }
    
    func onFetchError(with error: Error) {
        let alert = UIAlertController(
            title: error.localizedDescription,
            message: nil,
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .cancel))
        self.present(alert, animated: true)
    }
    
    
}
