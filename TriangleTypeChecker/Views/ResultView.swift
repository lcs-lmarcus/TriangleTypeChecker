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
                Text ("Side A: ")
                Text("\(somePriorResult.a)")
                Spacer()
                    .frame(width: 30)
                
                Text ("Side B: ")
                Text ("\(somePriorResult.b)")
                Spacer()
                    .frame(width: 30)
                
                Text("Side C: ")
                Text ("\(somePriorResult.c)")
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
