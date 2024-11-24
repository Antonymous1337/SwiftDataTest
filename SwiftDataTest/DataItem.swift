//
//  DataItem.swift
//  SwiftDataTest
//
//  Created by Antony Holshouser on 11/23/24.
//

import Foundation
import SwiftData

@Model
class DataItem {
    var id: String
    var test: Bool
    
    init() {
        id = UUID().uuidString
        test = false
    }
}
