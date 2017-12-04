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
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func test_TableViewIsNotNilAfterViewDidLoad() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
    _ = sut.view
    XCTAssertNotNil(sut.tableView)
  }
}
