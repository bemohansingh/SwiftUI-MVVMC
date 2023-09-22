//
//  RepoListView.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import SwiftUI

struct RepoListView: View {
    @StateObject var viewModel = RepoListViewModel()
        let tapOnRepoAction: (Repo) -> Void
        
        var body: some View {
            List(viewModel.repos) { repo in
                Button(action: {
                    tapOnRepoAction(repo)
                }, label: {
                    RepoCell(repo: repo)
                })
            }
            .onAppear {
                viewModel.getRepos()
            }
        }
}

