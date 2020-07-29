import XCTest
class DemoTests:XCTestCase {
    func testMain() {
        
    }
}

class ApiClient {
    private init() {}
    
    internal static
        func make_singleton() -> ApiClient {ApiClient()}
    static let Singleton = ApiClient()
}
