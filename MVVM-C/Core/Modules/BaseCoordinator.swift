//
//  BaseCoordinator.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import SwiftUI

protocol BaseCoordinator: View {
    
}


struct AppCoordinator<Coordinator: BaseCoordinator>: BaseCoordinator {
    let rootCoordinator: Coordinator
    
    init(@ViewBuilder rootCoordinator: () -> Coordinator) {
            self.rootCoordinator = rootCoordinator()
        }
    
    var body: some View {
        NavigationView {
            self.rootCoordinator
        }
    }
}
//ForEach(myviews, id: \.self) { myview in
//       Text(myview)
//   }

