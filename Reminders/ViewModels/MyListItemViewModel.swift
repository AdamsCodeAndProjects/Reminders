//
//  MyListItemViewModel.swift
//  Reminders
//
//  Created by adam janusewski on 6/13/22.
//

import Foundation
import CoreData

struct MyListItemViewModel: Identifiable { //Would like to iterate through it
    
    private let myListItem: MyListItem // Core Data Model.
    
    let id = UUID()
    init(myListItem: MyListItem) {
        self.myListItem = myListItem
    }
    
    var listItemId: NSManagedObjectID {
        myListItem.objectID
    }
    
    var title: String {
        myListItem.title ?? ""
    }
    
    var dueDate: DueDate? {
        if let date = myListItem.dueDate {
            return DueDate.from(value: date)
        } else {
            return nil
        }
    }
    
    var isCompleted: Bool {
        myListItem.isCompleted
    }
    
}
