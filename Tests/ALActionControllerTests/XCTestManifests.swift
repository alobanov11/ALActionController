import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ALActionControllerTests.allTests),
    ]
}
#endif
