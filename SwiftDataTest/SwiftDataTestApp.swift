//
//  SwiftDataTestApp.swift
//  SwiftDataTest
//
//  Created by Antony Holshouser on 11/23/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: DataItem.self)
        }
    }
}
