//
//  RepoListCoordinator.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import SwiftUI

struct RepoListCoordinator: BaseCoordinator {
    var navigation: AppNavigation
     let username: String
     
     var body: some View {
         VStack {
             RepoListView(tapOnRepoAction: { repo in
                 navigation.push(NavigationView(view: AnyView(Text("Ram"))))
             })
         }
     }
  
}

struct RepoListCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        RepoListCoordinator(navigation: AppNavigation(), username: "sdfg")
    }
}
