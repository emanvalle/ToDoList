//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Taco Titan on 4/13/25.
//

import SwiftUI

@main
struct ToDoListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
