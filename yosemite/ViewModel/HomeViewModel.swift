import Foundation

class HomeViewModel: ObservableObject {
    @Published var welcome: String = "Hello, World!"
    
    func createUser() {
        let mockUser: User = User(
            id: "AAA",
            email: "carlo@denardin.it",
            firstName: "Carlo",
            lastName: "De Nardin"
        )
        restService.createUser(user: mockUser) { result in
            print(result)
        }
    }
    
    final let restService: RestServiceProtocol = RestService()
}
