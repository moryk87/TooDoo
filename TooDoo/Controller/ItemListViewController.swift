//
//  ItemListViewController.swift
//  TooDoo
//
//  Created by Jan Moravek on 15/03/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
//    var tableView: UITableView?
    @IBOutlet var tableView: UITableView?
//    @IBOutlet var dataProvider: ItemListDataProvider! => decoupled =>
//    @IBOutlet var dataProvider: UITableViewDataSource!
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = dataProvider
        tableView?.delegate = dataProvider
        
//        tableView = UITableView()
    }
}
