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
                Text ("Side A:")
                Text("\(somePriorResult.a)")
                    .padding(.trailing)
                    
                
                Text ("Side B:")
                Text ("\(somePriorResult.b)")
                    .padding(.trailing)
                
                Text("Side C:")
                Text ("\(somePriorResult.c)")
                    .padding(.trailing)
            }
            
            Text (somePriorResult.feedback)
                .fontWeight(.semibold)
                .font(Font.custom("Times New Roman", size: 20.0, relativeTo: .body))
                
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 15)
    }
}

#Preview {
    ResultView(somePriorResult: resultforPreview)
}
