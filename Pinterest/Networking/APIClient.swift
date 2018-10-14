
import Foundation

//enum Result1<T> {
//    case success(T)
//    case failure(Error)
//}
//
//enum APIError: Error {
//    case unknown
//    case notResponse
//    case jsonDecoder
//    case imageDownload
//}
//
//protocol APIClient {
//    var session: URLSession { get }
//    func get<T: Codable>(with request: URLRequest, completion: @escaping (Result1<T>) -> Void)
//}
//
//extension APIClient {
//    var session: URLSession {
//        return URLSession.shared
//    }
//    
//    func get<T: Codable>(with request: URLRequest, completion: @escaping (Result1<T>) -> Void) {
//        let task = session.dataTask(with: request) { (data, response, error) in
//            guard error == nil else {
//                completion(.failure(error!))
//                return
//            }
//            
//            guard let response: HTTPURLResponse = response as? HTTPURLResponse, 200..<300 ~= response.statusCode else {
//                completion(.failure(APIError.notResponse))
//                return
//            }
//            
//            guard let data: Data = data, let value: T = try? JSONDecoder().decode(T.self, from: data) else {
//                completion(.failure(APIError.jsonDecoder))
//                return
//            }
//            
//            DispatchQueue.main.async {
//                completion(.success(value))
//            }
//        }
//        task.resume()
//    }
//}
