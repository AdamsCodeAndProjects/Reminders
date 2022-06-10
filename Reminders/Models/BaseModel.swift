//
//  BaseModel.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//

import Foundation
import CoreData

// Provides Common Functionality to main entities

protocol BaseModel {
    static var viewContext: NSManagedObjectContext { get }
    func save() throws
}

//  For Default values
extension BaseModel where Self: NSManagedObject {  // Setting a contraint so not every class can access
    static var viewContext: NSManagedObjectContext {
        CoreDataManager.shared.persistentContainer.viewContext
    }
    
    //  Needed to save values
    func save() throws {
        try Self.viewContext.save()  // static property, so call Self to access
    }
}
