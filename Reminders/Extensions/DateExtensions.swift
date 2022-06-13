//
//  DateExtensions.swift
//  Reminders
//
//  Created by adam janusewski on 6/13/22.
//

import Foundation

//  Return dates for today tomorrow and yesterday and convert dates to Strings

extension Date {
    
    static var today: Date {
        Date()
    }
    
    static var yesterday: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: today)!
    }
    
    static var tomorrow: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: today)!
    }
    
    var formatAsString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/DD/YYYY"
        return formatter.string(from: self)
    }
}
