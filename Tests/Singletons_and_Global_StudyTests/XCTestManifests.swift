import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Singletons_and_Global_StudyTests.allTests),
    ]
}
#endif
