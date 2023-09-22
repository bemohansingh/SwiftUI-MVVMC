//
//  Publisher+Utils.swift
//  MVVM-C
//
//  Created by Lean Q. Digital on 20/09/2023.
//


import Combine

extension Publisher {
    func optionalize() -> Publishers.Map<Self, Self.Output?> {
        map({ Optional.some($0) })
    }
}
