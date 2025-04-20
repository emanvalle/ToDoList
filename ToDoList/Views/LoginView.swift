//
//  LoginView.swift
//  ToDoList
//
//  Created by Taco Titan on 4/13/25.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView()
                
                //Login Form
                Form {
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        //Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                                
                        }
                    }
                    .padding()
                }
                
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
