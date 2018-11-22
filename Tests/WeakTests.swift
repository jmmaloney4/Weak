//
//  WeakTests.swift
//  CommandLineKit
//
//  Created by Jack Maloney on 11/20/18.
//

import XCTest
import Weak

class WeakTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("Hello, World!")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var arr = [Weak<DispatchQueue>]()
        arr.append(Weak())
        print(arr[0].?)
        print(arr[0].!)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
