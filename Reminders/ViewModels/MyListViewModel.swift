//
//  MyListViewModel.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//


//  Represents individual list
import Foundation
import CoreData
import SwiftUI

struct MyListViewModel: Identifiable {  // Will be displayed on a screen, so call identifiable
    
    private let myList: MyList
    
    init(myList: MyList) {
        self.myList = myList
    }
    
    var id: NSManagedObjectID {
        myList.objectID
    }
    
    var name: String {
        myList.name ?? ""
    }
    
    var color: Color {
        Color(myList.color ?? .clear)
    }
    
    //  Get all items
    var itemsCount: Int {
        items.count
    }
    
    var items: [MyListItemViewModel] {
        
        guard let items = myList.items,
              let myItems = (items.allObjects as? [MyListItem])
        else {
            return []
        }
        // Returning an array of MYLIstItemViewModel
        return myItems.filter { $0.isCompleted == false }.map(MyListItemViewModel.init)
    }
    
}
