//
//  Result.swift
//  TriangleTypeChecker
//
//  Created by Marcus Li on 2025-01-21.
//

import Foundation

struct Result: Identifiable {
    let id = UUID()
    let a: Int
    let b: Int
    let c: Int
    let feedback: String
}

let resultforPreview = Result(
    a: 10,
    b: 20,
    c: 30,
    feedback: "This is an Isoscles triangle"
)

