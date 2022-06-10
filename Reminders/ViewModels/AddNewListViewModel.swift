//
//  AddNewListViewModel.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//

import Foundation
import CoreData
import SwiftUI  // Needed to recognize 'Color'

class AddNewListViewModel: ObservableObject {  // There will be some properties shared / binded between views
    @Published var name: String = ""
    @Published var color: Color = .blue
    
    var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    // Saves the context
    func save() {
        let myList = MyList(context: context)  // Creates a new instance of myList
        myList.name = name                     // Set name and color
        myList.color = UIColor(color)
//        myList.save()
    }
}
