import XCTest
@testable import cross_service_jwt

final class cross_service_jwtTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(cross_service_jwt().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
