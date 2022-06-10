//
//  CoreDataManager.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//

// Set up core data stack.  With this, we should be able to view the Core Data Context

import Foundation
import CoreData

class CoreDataManager {
    
    
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
}

