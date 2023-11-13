//
//  FollowerBackgroundKeepAliveType.swift
//  xdrip
//
//  Created by Paul Plant on 12/11/23.
//  Copyright © 2023 Johan Degraeve. All rights reserved.
//

import Foundation


/// types of background keep-alive
public enum FollowerBackgroundKeepAliveType: Int, CaseIterable {
    
    // when adding to FollowerBackgroundKeepAliveType, add new cases at the end (ie 3, ...)
    // if this is done in the middle then a database migration would be required, because the rawvalue is stored as Int16 in the coredata
    // the order of the returned enum can be defined in allCases below
    
    case disabled = 0
    case normal = 1
    case aggressive = 2
    
    var description: String {
        switch self {
        case .disabled:
            return "Disabled"
        case .normal:
            return "Normal"
        case .aggressive:
            return "Aggresive"
        }
    }
    
}
