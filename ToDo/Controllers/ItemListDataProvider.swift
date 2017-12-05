//
//  ItemListDataProvider.swift
//  ToDo
//
//  Created by MMG on 2017-12-05.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject, UITableViewDataSource {
  var itemManager: ItemManager?
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let itemManager = itemManager else { return 0 }
    guard let itemSection = Section(rawValue: section) else {
      fatalError()
    }
    let numberOfRows: Int
    switch itemSection {
    case .ToDo:
      numberOfRows = itemManager.toDoCount
    case .Done:
      numberOfRows = itemManager.doneCount
    }
    return numberOfRows
  
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return ItemCell()
  }

}

enum Section: Int {
  case ToDo
  case Done
}
