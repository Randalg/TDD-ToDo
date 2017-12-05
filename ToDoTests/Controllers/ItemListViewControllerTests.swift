//
//  ItemListViewControllerTests.swift
//  ToDoTests
//
//  Created by MMG on 2017-12-04.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemListViewControllerTests: XCTestCase {
  var sut: ItemListViewController!
  
  override func setUp() {
    super.setUp()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController"
      ) as! ItemListViewController
    _ = sut.view
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func test_TableViewIsNotNilAfterViewDidLoad() {
    XCTAssertNotNil(sut.tableView.dataSource)
    XCTAssertTrue(sut.tableView.dataSource is ItemListDataProvider)
  }
  
  func testViewDidLoad_ShouldSetTableViewDelegate() {
    XCTAssertNotNil(sut.tableView.delegate)
    XCTAssertTrue(sut.tableView.delegate is ItemListDataProvider)
  }
  
  func testViewDidLoad_ShouldSetDelegateAndDataSourceToTheSameObject() {
    XCTAssertEqual(sut.tableView.dataSource as? ItemListDataProvider,
                   sut.tableView.delegate as? ItemListDataProvider)
  }
}
