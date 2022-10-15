import Foundation

final class RestService: RestServiceProtocol {
    func createUser(
        user: User, completion: @escaping (Result<Bool, Error>) -> Void)
    {
        guard let url = URL(string: "http://localhost:3000/users") else { return }
            
        let body: [String: Any] = [
            "id": user.id,
            "email": user.email,
            "firstName": user.firstName,
            "lastName": user.lastName,
        ]
            
        let finalData = try! JSONSerialization.data(withJSONObject: body)
            
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = finalData
        request.setValue(
            "application/json", forHTTPHeaderField: "Content-Type")
            
        URLSession.shared.dataTask(with: request) { data, _, error in
            do {
                if let data = data {
                    let result = try JSONDecoder().decode(User.self, from: data)
                    completion(.success(true))
                } else {
                    completion(.failure(error!))
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
