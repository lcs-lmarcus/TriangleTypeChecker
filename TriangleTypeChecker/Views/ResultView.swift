//
//  ResultView.swift
//  TriangleTypeChecker
//
//  Created by Marcus Li on 2025-01-21.
//

import SwiftUI

struct ResultView: View {
    
    let somePriorResult: Result
    
    var body: some View {
        VStack {
            HStack {
                Text (somePriorResult.inputA)
                Text (somePriorResult.inputB)
                Text (somePriorResult.inputC)
                
            }
        }
    }
}

#Preview {
    ResultView(somePriorResult: resultforPreview)
}
