//
//  MainTabBarView.swift
//  StartYourDay
//
//  Created by Dung Tan Nguyen on 20/3/26.
//

import SwiftUI

struct MainTabBarView: View {
    @StateObject private var viewModel = MainTabBarViewModel()
    private let appContainer: AppContainer = AppContainer()
    
    init() {
        let appeaarnce = UITabBarAppearance()
        appeaarnce.configureWithOpaqueBackground()
        appeaarnce.backgroundColor = .white
        
        appeaarnce.stackedLayoutAppearance.selected.iconColor = . black
        appeaarnce.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemPink]
        
        UITabBar.appearance().standardAppearance = appeaarnce
        UITabBar.appearance().scrollEdgeAppearance = appeaarnce
    }
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            ForEach(MainTab.allCases, id: \.self) { tab in
                viewForTab(tab).tabItem {
                    Label(tab.title, systemImage: tab.icon)
                }.tag(tab)
            }
        }
    }
    
    @ViewBuilder
    private func viewForTab(_ tab: MainTab) -> some View {
        switch tab {
        case .home:
            appContainer.makeHomeView()
        case .weather:
            appContainer.makeHomeView()
        case .profile:
            appContainer.makeHomeView()
        }
    }
}

#Preview {
    MainTabBarView()
}
