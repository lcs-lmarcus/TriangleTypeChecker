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
    
    // Guess Made
    @State var inputMade: [Int] = []
    
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
                        let latestResult= Result(
                            inputA: a
                            inputB: b
                            inputC: c
                        )
                        checkGuess()
                        
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
                        ForEach(inputMade, id: \.self) { currentGuess in
                            Text("\(currentGuess)")
                            Divider()
                        }
                    }
                }
            }
            
            .padding()
            .navigationTitle("Triangle Type Checker")
        }
    }
    // MARK: Function Check Guess
    func checkGuess() {
        // Attempt to unwrap the input provided by the user
        guard let selectedNumber = Int(givenInputA) else {
            feedback = "Please provide an integer."
            return
        }
        guard let selectedNumber = Int(givenInputB) else {
            feedback = "Please provide an integer."
            return
        }
        guard let selectedNumber = Int(givenInputC) else {
            feedback = "Please provide an integer."
            return
        }
        
        // Condition Statement
        if givenInputA == givenInputB && givenInputB == givenInputC && givenInputA == givenInputC {
            feedback = "It is a equilateral triangle"
        } else if givenInputA != givenInputB && givenInputA != givenInputC && givenInputB != givenInputC {
            feedback = "It is a scalene triangle"
        } else {
            feedback = "It is a isosceles triangle"
        }
        
        // Save the user's guesses
        inputMade.append(selectedNumber)
        
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
