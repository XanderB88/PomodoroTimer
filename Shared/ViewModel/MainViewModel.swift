//
//  MainViewModel.swift
//  PomodoroTimer (iOS)
//
//  Created by Alexander on 19.08.2021.
//

import Foundation

class MainViewModel: ObservableObject {
    
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
