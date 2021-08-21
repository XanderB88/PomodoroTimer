//
//  MainViewModel.swift
//  PomodoroTimer (iOS)
//
//  Created by Alexander on 19.08.2021.
//

import Foundation



class MainViewModel: ObservableObject {
    
    var buttonBellState: Bool = false
    var buttonBellImage: String
    var buttonConfigState: Bool = false
    
    init(buttonBellImage: String) {
        self.buttonBellImage = buttonBellImage
    }
    
    func buttonBellStateChanged() {
        buttonBellState.toggle()
        buttonBellImage = buttonBellState ? "bell" : "bell.slash"
        print(buttonBellState)
        print(buttonBellImage)
    }
    
    func buttonConfigStateChanged() {
        buttonConfigState.toggle()
        print(buttonConfigState)
    }
    
    
    // MARK: - Action methods
    func startTimer() {
        print("Timer was started")
    }
    
    func pauseTimer() {
        print("Timer was paused")
    }
    
    func stopTimer() {
        print("Timer was stoped and reset")
    }
    
    func muteTimer() {
        print("Timer was mute")
    }
    
    func nothing() {
        print("Do nothing")
    }
}
