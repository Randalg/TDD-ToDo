//
//  ItemListDataProviderTests.swift
//  ToDoTests
//
//  Created by MMG on 2017-12-05.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemListDataProviderTests: XCTestCase {
  var sut: ItemListDataProvider!
  var tableView: UITableView!
  
    override func setUp() {
      super.setUp()
      sut = ItemListDataProvider()
      sut.itemManager = ItemManager()
      tableView = UITableView()
      tableView.dataSource = sut    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  
  func testNumberOfSections_IsTwo() {
    let numberOfSections = tableView.numberOfSections
    XCTAssertEqual(numberOfSections, 2)
  }
  
  func testNumberRowsInFirstSection_IsToDoCount() {
    sut.itemManager?.addItem(ToDoItem(title: "First"))
    XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
    sut.itemManager?.addItem(ToDoItem(title: "Second"))
    tableView.reloadData()
    XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
  }
  
  func testNumberRowsInSecondSection_IsDoneCount() {
    sut.itemManager?.addItem(ToDoItem(title: "First"))
    sut.itemManager?.addItem(ToDoItem(title: "Second"))
    sut.itemManager?.checkItemAtIndex(0)
    XCTAssertEqual(tableView.numberOfRows(inSection: 1), 1)
    sut.itemManager?.checkItemAtIndex(0)
    tableView.reloadData()
    XCTAssertEqual(tableView.numberOfRows(inSection: 1), 2)
  }
  
  func testCellForRow_ReturnsItemCell() {
    sut.itemManager?.addItem(ToDoItem(title: "First"))
    tableView.reloadData()
    let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0))

    XCTAssertTrue(cell is ItemCell)
  }
}
