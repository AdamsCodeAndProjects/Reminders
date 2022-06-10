//
//  RemindersApp.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//

import SwiftUI

@main
struct RemindersApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeScreenView().environment(\.managedObjectContext, viewContext)  // everything now has access to the managedObjectContext
        }
    }
}
