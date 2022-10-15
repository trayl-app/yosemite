import FirebaseAuthService
import Foundation

class HomeViewModel: ObservableObject {
    func createFirebaseUser(email: String, password: String) {
        firebaseAuthService.createFirebaseUser(email: email, password: password) { result in
            switch result {
            case .success(let success):
                debugPrint("Debug: user successfully registered")
            case .failure(let failure):
                debugPrint("Debug: error! user not successfully registered \(failure)")
            }
        }
    }
    
    // MARK: Services

    let firebaseAuthService = FirebaseAuthService()
}
