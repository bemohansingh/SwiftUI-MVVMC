//
//  Repo.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//

import Foundation
struct Repo: Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id, name, description, owner, fork, source
        case fullName = "full_name"
        case htmlURL = "html_url"
    }
    
    var id: Int?
    var name: String?
    var fullName: String?
    var description: String?
    var htmlURL: URL?
    var owner: User?
    var fork: Bool?
    var source: Container<Repo>?
}
