//
//  Endpoint.swift
//  StartYourDayUI
//

import Foundation
import Alamofire

protocol APIEndpoint {
    var path: String { get }
    var method: HTTPMethod { get }
    var header: HTTPHeader { get }
    var param: Parameters { get }
}
