//
//  MyList.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//

import Foundation
import CoreData
import UIKit

@objc(MyList)
public class MyList: NSManagedObject, BaseModel {
    
    //  Request for lists
    static var all: NSFetchRequest<MyList> {
        let request: NSFetchRequest<MyList> = MyList.fetchRequest()
        request.sortDescriptors = []
        return request
    }
    
}

extension MyList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }

    @NSManaged public var color: UIColor?
    @NSManaged public var name: String?
    @NSManaged public var items: NSSet? 

}

extension MyList : Identifiable {

}
