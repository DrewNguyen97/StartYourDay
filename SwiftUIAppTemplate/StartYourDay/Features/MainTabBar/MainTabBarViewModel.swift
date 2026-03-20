//
//  MainTabBarViewModel.swift
//  StartYourDay
//
//  Created by Dung Tan Nguyen on 20/3/26.
//

import Foundation
import Combine

class MainTabBarViewModel: ObservableObject {
    @Published var selectedTab: MainTab = .home
    
    func switchTab(to tab: MainTab) {
        selectedTab = tab
    }
}

