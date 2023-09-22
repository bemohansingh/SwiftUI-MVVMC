//
//  ContentView.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 19/09/2023.
//

import SwiftUI

struct ContentView: View {
    static let username = "SwiftUI"
       
       var body: some View {
           ZStack {
               AppCoordinator {
                   RepoListCoordinator(username: ContentView.username)
               }
           }
       }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
