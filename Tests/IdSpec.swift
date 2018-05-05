//
//  IdSpec.swift
//  CQRS Swift Library
//
//  Created by Fiser on 5/5/18.
//

import XCTest

class IdSpec: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let id1 = IdStub(id: "1");
        let id2 = IdStub(id: "2");
        
        XCTAssert(id1 == id1, "Id1 is not equals betwen Id1")
        XCTAssert(id1 != id2, "Id1 is equals betwen Id2")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        dump(id1)
        print(id1.hashValue)
    }
}

struct IdStub : Id
{
    
    var id: String
}

enum TestError: Error {
    case NotEqualsIds()
}
