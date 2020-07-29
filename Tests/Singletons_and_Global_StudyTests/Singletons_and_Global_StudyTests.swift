import XCTest
@testable import Singletons_and_Global_Study

final class Singletons_and_Global_StudyTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Singletons_and_Global_Study().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
