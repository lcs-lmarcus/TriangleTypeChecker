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
                Spacer()
                    .frame(width: 30)
                Text (somePriorResult.inputB)
                Spacer()
                    .frame(width: 30)
                Text (somePriorResult.inputC)
                Spacer()
                    .frame(width: 30)
            }
            
            Text (somePriorResult.feedback)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 15)
    }
}

#Preview {
    ResultView(somePriorResult: resultforPreview)
}
