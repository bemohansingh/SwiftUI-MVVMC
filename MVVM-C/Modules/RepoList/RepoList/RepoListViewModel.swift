//
//  RepoListViewModel.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import Foundation

class RepoListViewModel: ObservableObject {
    @Published var repos: [Repo] = []
    var networkClient: GithubNetworkProvider = GithubNetworkClient()
    
    func getRepos() {
        networkClient
            .getRepos(username: "huynguyencong")
            .replaceError(with: [])
            .assign(to: &$repos)
    }
}
