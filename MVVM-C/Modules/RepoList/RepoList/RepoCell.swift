//
//  RepoCell.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import SwiftUI

struct RepoCell: View {
    let repo: Repo
      
      var body: some View {
          VStack(spacing: 10) {
              VStack {
                  Text(repo.name ?? "")
                  
                  if (repo.fork ?? false) {
                      Text("Forked from other repo")
                          .font(.caption)
                          .foregroundColor(.secondary)
                  }
              }
              
              if let description = repo.description {
                  Text(description)
                      .font(.caption)
                      .foregroundColor(.secondary)
                      .lineLimit(2)
              }
          }
      }
}

//struct RepoCell_Previews: PreviewProvider {
//    static var previews: some View {
////        RepoCell(repo: <#Repo#>)
//    }
//}
