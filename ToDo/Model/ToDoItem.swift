//
//  ToDoItem.swift
//  ToDo
//
//  Created by Martin Gyupchanov on 03-12-17.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let itemDescription: String?
  
    init(title: String, itemDescription: String? = nil) {
        self.title = title
        self.itemDescription = itemDescription
    }
}
