//
//  BaseCoordinator.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import SwiftUI

protocol BaseCoordinator {
    var navigation: NavigationRoute { get}
    func start()
    func finish()
}

struct AppCoordinator: BaseCoordinator {
    var navigation: NavigationRoute
    
    init(navigation: NavigationRoute) {
        self.navigation = navigation
    }
    
    func start() {
        
    }
    
    func finish() {
        
    }

}

struct AppContentView: View {
    @StateObject var navigation: AppNavigation
 
    
    var body: some View {
       
            NavigationStack(path: $navigation.screens, root: {
                VStack {
                    navigation.rootView
                }
                    .navigationDestination(for: NavigationView.self) { value in
                        value.view
                    }
            })
       
    }
}


protocol NavigationRoute {
    var rootView: AnyView? { get set}
    func push(_ view: NavigationView)
    func pop()
}

class AppNavigation: NavigationRoute, ObservableObject {
    @Published var rootView: AnyView?
    @Published var screens: [NavigationView]
    
    init(rootView: AnyView? = nil, screens: [NavigationView] = []) {
        self.rootView = rootView
        self.screens = screens
    }
    
    func push(_ view: NavigationView) {
        print("Pushed")
        print(screens.count)
        screens.append(view)
    }
    
    func pop() {
        screens.popLast()
    }
}

struct NavigationView : Hashable, Identifiable {
    let id = UUID()
    let view: AnyView
    
    func hash(into hasher: inout Hasher) {
           hasher.combine(id)
    }
    
    static func == (lhs: NavigationView, rhs: NavigationView) -> Bool {
        return lhs.id == rhs.id
    }
}
