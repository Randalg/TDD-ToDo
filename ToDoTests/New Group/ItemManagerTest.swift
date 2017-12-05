//
//  ItemManagerTest.swift
//  ToDoTests
//
//  Created by Martin Gyupchanov on 03-12-17.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTest: XCTestCase {
  var sut: ItemManager!

  override func setUp() {
    sut = ItemManager()
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testToDoCount_Initially_ShouldBeZero() {
    XCTAssertEqual(sut.toDoCount, 0, "Initially toDo count should be 0")
  }
  
  func testDoneCount_Initially_ShouldBeZero() {
    XCTAssertEqual(sut.doneCount, 0, "Initially done count should be 0")
  }
  
  func testToDoCount_AfterAddingOneItem_IsOne() {
    sut.addItem(ToDoItem(title: "Test title"))
  
    XCTAssertEqual(sut.toDoCount, 1, "toDoCount should be 1")
  }
  
  func testItemAtIndex_ShouldReturnPreviouslyAddedItem() {
    let item = ToDoItem(title: "Item")
    sut.addItem(item)
    let returnedItem = sut.itemAtIndex(0)
  
    XCTAssertEqual(item.title, returnedItem.title, "should be the same item")
  }
  
  func testCheckingItem_ChangesCountOfToDoAndOfDoneItems() {
    sut.addItem(ToDoItem(title: "First Item"))
    sut.checkItemAtIndex(0)
  
    XCTAssertEqual(sut.toDoCount, 0, "toDOCount should be 0")
    XCTAssertEqual(sut.doneCount, 1, "doneCount should be 1")
  }
  
  func testCheckingItem_RemovesItFromTheToDoItemList() {
    let firstItem = ToDoItem(title: "First")
    let secondItem = ToDoItem(title: "Second")
    sut.addItem(firstItem)
    sut.addItem(secondItem)
    sut.checkItemAtIndex(0)
    XCTAssertEqual(sut.itemAtIndex(0).title, secondItem.title)
  }
  
  func testDoneItemAtIndex_ShouldReturnPreviouslyCheckedItem() {
    let item = ToDoItem(title: "Item")
    sut.addItem(item)
    sut.checkItemAtIndex(0)
    let returnedItem = sut.doneItemAtIndex(0)
  
    XCTAssertEqual(item, returnedItem, "should be the same item")
  }
  
  func testRemoveAllItems_ShouldResultInCountsBeZero() {
    sut.addItem(ToDoItem(title: "First"))
    sut.addItem(ToDoItem(title: "Second"))
    sut.checkItemAtIndex(0)
    XCTAssertEqual(sut.toDoCount, 1,
                   "toDoCount should be 1")
    XCTAssertEqual(sut.doneCount, 1,
                   "doneCount should be 1")
    sut.removeAllItems()
    
    XCTAssertEqual(sut.toDoCount, 0, "toDoCount should be 0")
    XCTAssertEqual(sut.doneCount, 0, "doneCount should be 0")
  }
  
  func testAddingTheSameItem_DoesNotIncreaseCount() {
    sut.addItem(ToDoItem(title: "First"))
    sut.addItem(ToDoItem(title: "First"))
    XCTAssertEqual(sut.toDoCount, 1)
  }
}
