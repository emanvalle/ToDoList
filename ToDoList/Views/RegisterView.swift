//
//  RegisterView.swift
//  ToDoList
//
//  Created by Taco Titan on 4/13/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                
                TextField("Email Adress", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TDLButton(title: "Create Account",
                          background: .green
                ) {
                    //Attempt to register
                }
            }
            .offset(y: -50)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
