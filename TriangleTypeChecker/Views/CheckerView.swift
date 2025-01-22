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

    
    @State var priorResults: [Result] = []
    
    // Feedback on user
    @State var feedback = ""
    
    
    // MARK: Computed Property
    var body: some View {
        NavigationStack {
            VStack (spacing: 20) {
                // Input of 3 Sides (Strings)
                Text ("Enter the Side Length A")
                TextField("Enter Side Length A", text: $givenInputA)
                
                Text ("Enter the Side Length B")
                TextField("Enter Side Length B", text: $givenInputB)
                
                Text ("Enter the Side Length C")
                TextField("Enter Side Length C", text: $givenInputC)
                
                HStack {
                    Button {
                        classifyTriangle()
                    } label: {
                        Text ("Submit Lengths")
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button {
                        resetData()
                    } label: {
                        Text ("Reset Input")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                }
                Text(feedback)
                    .font(
                        .custom(
                            "BradleyHandITCTT-Bold",
                            size: 24.0,
                            relativeTo: .title3
                        )
                    )
                Text ("Input History")
                ScrollView {
                    VStack(spacing: 5) {
                        List(priorResults.reversed()) { currentResult in
                            HStack {
                                ResultView(somePriorResult: currentResult)
                            }
                        }
                    }
                }
            }
            
            .padding()
            .navigationTitle("Triangle Type Checker")
        }
    }
    
    // MARK: Functions
    
    func classifyTriangle() {
        // Attempt to unwrap the input provided by the user
        guard let sideA = Int(givenInputA) else {
            feedback = "Please provide an integer."
            return
        }
        guard let sideB = Int(givenInputB) else {
            feedback = "Please provide an integer."
            return
        }
        guard let sideC = Int(givenInputC) else {
            feedback = "Please provide an integer."
            return
        }
        
        // Condition Statement
        if sideA == sideB && sideB == sideC && sideA == sideC {
            feedback = "It is a equilateral triangle"
        } else if sideA != sideB && sideA != sideC && sideB != sideC {
            feedback = "It is a scalene triangle"
        } else {
            feedback = "It is a isosceles triangle"
        }
        
        // Save the user's guesses
        let latestResult = Result(
            a: sideA,
            b: sideB,
            c: sideC,
            feedback: feedback
        )
    }
    
    // MARK: Function Reset
    func resetData () {
        // Reset all input
        givenInputA = ""
        givenInputB = ""
        givenInputC = ""
        
        feedback = ""
        
    }
}

#Preview {
    CheckerView()
}
