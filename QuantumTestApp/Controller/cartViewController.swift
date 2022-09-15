//
//  cartViewController.swift
//  QuantumTestApp
//
//  Created by Dhruv Shrivastava on 15/09/22.
//

import Foundation
import UIKit

class cartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    @IBOutlet var table: UITableView!
    
    var models = [Modal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Cart"
        
        
        models.append(Modal(text: "Kinnaur Apples", imageName: "Image_1", price: "Rs 159"))
        models.append(Modal(text: "Small Tindey", imageName: "Image_4", price: "Rs 110"))
        models.append(Modal(text: "Kiwi", imageName: "Image_2", price: "Rs 45"))
        models.append(Modal(text: "Yellow Pumpkin", imageName: "Image_3", price: "Rs 40"))
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.dataSource = self
        table.delegate = self
        
        
    }
    // Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
    }

}

struct Modal {
    let text: String
    let imageName: String
    let price: String
    
    init(text: String, imageName: String, price: String) {
        self.text = text
        self.imageName = imageName
        self.price = price
    }
}
