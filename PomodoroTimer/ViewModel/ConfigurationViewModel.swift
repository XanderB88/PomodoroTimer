//
//  ConfigurationViewModel.swift
//  PomodoroTimer (iOS)
//
//  Created by Alexander on 19.08.2021.
//

import Foundation

class ConfigurationViewModel: ObservableObject {
    @Published var buttonSaveState = false

    // MARK: - Methods
    func buttonSaveStateChanged() {
        buttonSaveState.toggle()
        print(buttonSaveState)
    }
    
    func save() {
        print("something")
    }
}
