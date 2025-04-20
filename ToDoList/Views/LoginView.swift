//
//  LoginView.swift
//  ToDoList
//
//  Created by Taco Titan on 4/13/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
        
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                
                //Login Form
                Form {
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TDLButton(title: "Log In",
                              background: .blue
                    ) {
                        //Attempt Log In
                    }
                }
                .offset(y: -50)
                
                //Create Acct
                VStack {
                    Text("Don't have an account?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
