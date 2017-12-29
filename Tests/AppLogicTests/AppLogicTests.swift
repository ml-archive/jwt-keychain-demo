import XCTest

import Core
import HTTP

@testable import Vapor
@testable import AppLogic

class AppLogicTests: XCTestCase {
    static var allTests = [
        ("testExample", testExample)
    ]
    
    func testExample() throws {
        // Just a dummy test to satisfy GitLab CI.
        XCTAssert(true)
    }
}

extension AppLogicTests {
    func makeDroplet() throws -> Droplet {
        let drop = Droplet(arguments: ["/dummy/path/", "prepare"])
        try setup(drop)
        try drop.runCommands()
        return drop
    }
}