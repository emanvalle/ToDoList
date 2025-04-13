//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Taco Titan on 4/13/25.
//

import FirebaseCore // Database library
import SwiftUI

@main
struct ToDoListApp: App {
    
    //Establishing connection to database
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
