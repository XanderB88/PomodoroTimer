//
//  PomodoroTimerApp.swift
//  Shared
//
//  Created by Alexander on 12.08.2021.
//

import SwiftUI

@main
struct PomodoroTimerApp: App {
    @StateObject var mainView = MainViewModel()
    var body: some Scene {
        WindowGroup {
            ApplicationView().environmentObject(mainView)
        }
    }
}
