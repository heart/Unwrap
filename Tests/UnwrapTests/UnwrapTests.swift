import XCTest
@testable import Unwrap

final class UnwrapTests: XCTestCase {
    func testUnwrapString() {
        let n:String? = "hello string"
        n.unwrap{
            XCTAssertEqual($0, "hello string")
        }
    }
    
    func testUnwrapDouble() {
        let n:Double? = 49.9912782563
        n.unwrap{
            XCTAssertEqual($0,  49.9912782563)
        }
    }
    
    
    func testUnwrapInt() {
        let n:Int? = 999
        n.unwrap{
            XCTAssertEqual($0, 999)
        }
    }

    func testUnwrapObject() {
        let n:[String:String]? = [
            "msg" : "Hello Dictionary"
            ]
        
        n.unwrap{
            XCTAssertEqual($0["msg"], "Hello Dictionary")
        }
    }
    
    func testUnwrapNil() {
            let n:String? = nil
        
           n.unwrap{ _ in
              XCTAssertEqual("if this run it's fail", "xxx")
           }
        
        XCTAssertEqual("Pass", "Pass")
    }
    
    static var allTests = [
        ("testUnwrapString", testUnwrapString),
        ("testUnwrapDouble", testUnwrapDouble),
        ("testUnwrapInt", testUnwrapInt),
        ("testUnwrapObject", testUnwrapObject),
        ("testUnwrapObject", testUnwrapObject),
        ("testUnwrapNil", testUnwrapNil),
    ]
}
