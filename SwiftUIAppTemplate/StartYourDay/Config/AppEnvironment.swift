//
//  AppEnvironment.swift
//  StartYourDay
//
//  Created by Dung Tan Nguyen on 19/3/26.
//

import Foundation

enum AppEnvironment: String {
    case dev = "DEV"
    case prod = "PROD"
    
    var baseURL: String {
        switch self {
        case .dev:
            return ""
        case .prod:
            return ""
        }
    }
    
    static var currentEnv: AppEnvironment {
        let value = Bundle.main.object(forInfoDictionaryKey: "Environment") as? String
        return AppEnvironment(rawValue: value ?? "") ?? .dev
    }
}
