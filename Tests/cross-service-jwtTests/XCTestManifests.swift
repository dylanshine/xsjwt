import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(cross_service_jwtTests.allTests),
    ]
}
#endif
