//
//  MainViewModel.swift
//  PomodoroTimer (iOS)
//
//  Created by Alexander on 19.08.2021.
//

import Foundation



class MainViewModel: ObservableObject {
    
    @Published var buttonBellState: Bool = false
    @Published var buttonConfigState: Bool = false
    @Published var buttonPlayState: Bool = false
    @Published var buttonStopState: Bool = false
   
//    Change stata parameter when button pushed
    func buttonBellStateChanged() {
        buttonBellState.toggle()
        print(buttonBellState)
    }
    
    func buttonConfigStateChanged() {
        buttonConfigState.toggle()
        print(buttonConfigState)
    }
    
    func buttonPlayStateChanged() {
        buttonPlayState.toggle()
        print(buttonConfigState)
    }
    
    func buttonStopStateChanged() {
        buttonStopState.toggle()
        print(buttonStopState)
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
