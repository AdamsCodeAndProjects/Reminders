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
    func delete() throws
    static func byId<T: NSManagedObject>(id: NSManagedObjectID) -> T?
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
    
    func delete() throws {
        Self.viewContext.delete(self)
        try save()
    }
    
    static func byId<T>(id: NSManagedObjectID) -> T? {
        viewContext.object(with: id) as? T
    }
}
