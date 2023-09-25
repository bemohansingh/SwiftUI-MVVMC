//
//  MVVM_CApp.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 19/09/2023.
//

import SwiftUI

@main
struct MVVM_CApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            AppContentView(navigation: AppNavigation(rootView: AnyView(Text("Text"))))
        }
    }
}
