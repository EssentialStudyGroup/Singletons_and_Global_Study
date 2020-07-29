import XCTest
class DemoTests:XCTestCase {
    func testMain() {
        
    }
}
// MARK: - copy from video
class MockApiClient: ApiClient { }
// MARK: - Api Module
class ApiClient {
    private init() {}
    
    internal static
        func make_singleton() -> ApiClient {ApiClient()}
    static let Singleton = ApiClient()
    func execute(_ request: URLRequest,
                 completion:(Date)->Void) {}
}
// MARK: - Login Module
struct LoggedInUser {}
extension ApiClient {
    func login(completion:(LoggedInUser) -> Void) {}
}
class LoginViewController {
    var api = ApiClient.Singleton
    func didTapLoginButton() {
        api.login {
            user in
            // show next screen
        }
    }
}
// MARK: - Feed Module
struct FeedItem {}
extension ApiClient {
    func loadFeed(completion:([FeedItem]) -> Void) {}
}
class FeedViewController {
    var api = ApiClient.Singleton
    func viewDidLoad() {
        api.loadFeed() {
            items in
            
        }
    }
}
