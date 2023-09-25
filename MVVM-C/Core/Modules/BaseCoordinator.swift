//
//  BaseCoordinator.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import SwiftUI

protocol BaseCoordinator: View {
    var navigation: AppNavigation { get}
}

struct AppCoordinator<Coordinator: BaseCoordinator>: BaseCoordinator {
    @StateObject var navigation: AppNavigation = AppNavigation.root
    var rootCoordinator: Coordinator?
    
    init(@ViewBuilder rootCoordinator: () -> Coordinator) {
            self.rootCoordinator = rootCoordinator()
        }
    
    var body: some View {
        NavigationStack(path: $navigation.screens, root: {
            VStack {
            
                self.rootCoordinator
            }
                .navigationDestination(for: NavigationView.self) { value in
                    value.view
                }
        })
    }
}


protocol NavigationRoute {
    
    func push(_ view: NavigationView)
    func pop()
}

class AppNavigation: NavigationRoute, ObservableObject {
    static let root = AppNavigation()
   @Published var screens: [NavigationView] = [NavigationView(view: AnyView(Text("RAMMAMA")))]
    
    
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
