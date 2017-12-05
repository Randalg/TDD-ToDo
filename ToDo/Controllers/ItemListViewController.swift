//
//  ItemListViewController,ViewController.swift
//  ToDo
//
//  Created by MMG on 2017-12-04.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!
  
  override func viewDidLoad() {
//    tableView = UITableView()
    tableView.dataSource = dataProvider
    tableView.delegate = dataProvider
  }
}
