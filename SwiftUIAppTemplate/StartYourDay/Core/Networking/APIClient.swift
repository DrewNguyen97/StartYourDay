//
//  APIClient.swift
//  StartYourDayUI
//

import Foundation
import Alamofire

protocol APIClientProtocol {
    func request<T: Decodable>(_ endpoint: APIEndpoint) async throws -> T
}

final class APIClient: APIClientProtocol {

    static let shared = APIClient()
    
    private let session: Session

    init(session: Session = .default) {
        self.session = session
    }
    
    func request<T: Decodable>(_ endpoint: APIEndpoint) async throws -> T {
        let baseUrl = AppEnvironment.currentEnv.baseURL
        guard let url = URL(string: baseUrl)?.appendingPathExtension(endpoint.path) else {
            throw APIError.invalidURL
        }
        let request = AF.request(url,
                                 method: endpoint.method,
                                 parameters: endpoint.param,
                                 encoding: endpoint.method == .get ? URLEncoding.default : JSONEncoding.default)
        let response = await request.serializingDecodable(T.self).response
        
        switch response.result {
        case .success(let value):
            return value
        case .failure(let error):
            if let statusCode = response.response?.statusCode {
                throw APIError.httpStatus(statusCode)
            }
            throw APIError.underlying(error)
        }
    }
}
