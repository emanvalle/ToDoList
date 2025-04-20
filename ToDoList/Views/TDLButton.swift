//
//  TDLButton.swift
//  ToDoList
//
//  Created by Taco Titan on 4/19/25.
//

import SwiftUI

struct TDLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            //Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                    
            }
        }
        .padding()
    }
}

#Preview {
    TDLButton(title: "Value",
              background: .pink) {
        // Action
    }
}
