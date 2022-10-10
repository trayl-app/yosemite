import Foundation

protocol RestServiceProtocol: AnyObject {
    func createUser(
        user: User,
        completion: @escaping (Result<Bool, Error>) -> Void
    ) 
}
