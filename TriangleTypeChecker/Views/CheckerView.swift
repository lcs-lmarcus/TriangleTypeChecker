//
//  CheckerView.swift
//  TriangleTypeChecker
//
//  Created by Marcus Li on 2025-01-20.
//

import SwiftUI

struct CheckerView: View {
    // MARK: Stored Property
    // Input of Side Length
    @State var givenInputA = ""
    @State var givenInputB = ""
    @State var givenInputC = ""
    
    // Feedback on user
    @State var feedback = ""
    
    // MARK: Computed Property
    var body: some View {
        NavigationStack {
            VStack {
                // Input of 3 Sides (Strings)
                Text ("Enter the Side Length A")
                TextField("Enter Side Length A", text: $givenInputA)
                
                Text ("Enter the Side Length B")
                TextField("Enter Side Length B", text: $givenInputB)
                
                Text ("Enter the Side Length C")
                TextField("Enter Side Length C", text: $givenInputC)
                
            }
            
            .padding()
            .navigationTitle("Triangle Type Checker")
        }
    }
}

#Preview {
    CheckerView()
}
