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
class MyList: NSManagedObject {
    
}

extension MyList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }

    @NSManaged public var color: UIColor?
    @NSManaged public var name: String?

}

extension MyList : Identifiable {

}
