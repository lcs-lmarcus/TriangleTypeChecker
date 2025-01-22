//
//  Result.swift
//  TriangleTypeChecker
//
//  Created by Marcus Li on 2025-01-21.
//

import Foundation

struct Result: Identifiable {
    let id = UUID()
    let inputA: String
    let inputB: String
    let inputC: String
    let feedback: String
}

let resultforPreview = Result(
    inputA: "1",
    inputB: "2",
    inputC: "3",
    feedback: "This is an Isoscles triangle"
)

