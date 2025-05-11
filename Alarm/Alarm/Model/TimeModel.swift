//
//  Time Model.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/3/25.
//

import Foundation

struct TimeModel: Equatable, Comparable, Identifiable {
    static func < (lhs: TimeModel, rhs: TimeModel) -> Bool {
//        if (lhs.hours < rhs.hours) {
//            return true
//        } else if(lhs.hours == rhs.hours && lhs.minutes < rhs.minutes) {
//            return true
//        } else {
//            return false
//        }
        (lhs.hours < rhs.hours) || (lhs.hours == rhs.hours && lhs.minutes < rhs.minutes)
        
    }
    
    let id = UUID()
    let hours: Int
    let minutes: Int
    
}
