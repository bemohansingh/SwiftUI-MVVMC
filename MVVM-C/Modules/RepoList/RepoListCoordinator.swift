//
//  RepoListCoordinator.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import SwiftUI

struct RepoListCoordinator: BaseCoordinator {
    var navigation: NavigationRoute
    
    func start() {
        navigation.push(NavigationView(view: AnyView(RepoListView(tapOnRepoAction: { repo in
            navigation.push(NavigationView(view: AnyView(Text("Ram"))))
        }))))
    }
    
    func finish() {
        
    }
    
 
  
}

