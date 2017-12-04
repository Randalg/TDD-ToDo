//
//  LocationTests.swift
//  ToDoTests
//
//  Created by Martin Gyupchanov on 03-12-17.
//  Copyright © 2017 Martin Gyupchanov. All rights reserved.
//

import XCTest
@testable import ToDo
import CoreLocation

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  
  func testInit_ShouldSetName() {
    let location = Location(name: "Test Name")
    XCTAssertEqual(location.name, "Test Name", "Initializer should set the location name")
  }
  
  func testInit_ShouldSetNameAndCoordinate() {
    let testCoordinate = CLLocationCoordinate2D(latitude: 1,
                                                longitude: 2)
    let location = Location(name: "", coordinate: testCoordinate)
    
    XCTAssertEqual(location.coordinate?.latitude,
                   testCoordinate.latitude,
                   "Initializer should set latitude")
    XCTAssertEqual(location.coordinate?.longitude,
                   testCoordinate.longitude,
                   "Initializer should set longitude")
  }
}
