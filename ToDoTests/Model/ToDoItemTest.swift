//
//  ToDoItemTest.swift
//  ToDoTests
//
//  Created by Martin Gyupchanov on 03-12-17.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShouldSetTitle() {
        let item = ToDoItem(title: "Test title")
        XCTAssertNotNil(item, "item should not be nil")
        XCTAssertEqual(item.title, "Test title", "Initializer should set the item title")
    }
    
    func testInit_ShouldTakeTitleAndDescription() {
        _ = ToDoItem(title: "Test title", itemDescription: "Test description")
    }
  
    func testInit_ShouldSetTitleAndDescription() {
      let item = ToDoItem(title: "Test title", itemDescription: "Test description")
      XCTAssertEqual(item.itemDescription , "Test description", "Initializer should set the item description")
    }
}
