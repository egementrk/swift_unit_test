//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by Egemen on 12.12.2021.
//

import XCTest
@testable import UnitTestExample

class UnitTestExampleTests: XCTestCase {

    var firstUser: User!
    var secondUser: User!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        firstUser = User(name: "Ahmet", age: 21)
        secondUser = User(name: "Ali", age: 19)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func testCompareUserAge(){
        let VC: ViewController! = ViewController()
        let result = VC.compareUser(firstUser: firstUser, secondUser: secondUser)
        XCTAssertEqual(result, "Ali")
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
