//
//  MainTabBarModel.swift
//  StartYourDay
//
//  Created by Dung Tan Nguyen on 20/3/26.
//

import Foundation

enum MainTab: Int, CaseIterable {
    case home = 0
    case weather
    case profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .weather:
            return "Weather"
        case .profile:
            return "Profile"
        }
    }
        
    var icon: String {
        switch self {
        case .home:
            return "house"
        case .weather:
            return "cloud.sun"
        case .profile:
            return "person.circle"
        }
    }
}
