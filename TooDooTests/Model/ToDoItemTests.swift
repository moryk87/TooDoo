//
//  TooDooItemTests.swift
//  TooDooTests
//
//  Created by Jan Moravek on 14/03/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import XCTest
@testable import TooDoo

class TooDooItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Init_WhenGivenTitle_SetsTitle() {
        let item = ToDoItem(title: "Foo")
        
        XCTAssertEqual(item.title, "Foo", "should set title")
    }
    
    func test_Init_WhenGivenDescription_SetsDescription() {
        let item = ToDoItem(title: "Foo", itemDescription: "Bar")
        
        XCTAssertEqual(item.itemDescription, "Bar", "should set itemDescription")
    }
    
    func test_Init_SetsTimestamp() {
        let item = ToDoItem(title: "", timestamp: 0.0)
        
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    func test_Init_WhenGivenLocation_SetsLocation() {
        _ = Location(name: "Foo")
    }
    
    func test_Init_SetsLocation() {
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "", location: location)
        
        XCTAssertEqual(item.location?.name, location.name, "should set location")
    }
    
    func test_EqualItems_AreEqual() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Foo")
        
        XCTAssertEqual(first, second)
    }
    
    func test_Items_WhenOneLocationIsNil_AreNotEqual() {
        var first = ToDoItem(title: "", location: Location(name: "Foo"))
        var second = ToDoItem(title: "",location: nil)
        
        first = ToDoItem(title: "", location: nil)
        second = ToDoItem(title: "", location: Location(name: "Foo"))
        
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTimestampsDiffer_AreEqual() {
        let first = ToDoItem(title: "Foo", timestamp: 0.0)
        let second = ToDoItem(title: "Foo", timestamp: 0.0)
        
        XCTAssertEqual(first, second)
    }
    
    func test_Items_WhenDescriptionsDiffer_AreEqual() {
        let first = ToDoItem(title: "Foo", itemDescription: "Bar")
        let second = ToDoItem(title: "Foo", itemDescription: "Bar")
        
        XCTAssertEqual(first, second)
    }
}





