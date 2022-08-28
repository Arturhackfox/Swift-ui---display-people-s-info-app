//
//  swift_UI_WorkingPeople_TrackerApp.swift
//  swift UI WorkingPeople Tracker
//
//  Created by Arthur Sh on 28.08.2022.
//

import SwiftUI

@main
struct swift_UI_WorkingPeople_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
