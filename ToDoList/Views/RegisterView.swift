//
//  RegisterView.swift
//  ToDoList
//
//  Created by Taco Titan on 4/13/25.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
