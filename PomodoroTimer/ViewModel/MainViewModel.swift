//
//  MainViewModel.swift
//  PomodoroTimer (iOS)
//
//  Created by Alexander on 19.08.2021.
//

import Foundation



class MainViewModel: ObservableObject {

    // MARK: - Button pressed states
    @Published var buttonBellState: Bool = false
    @Published var buttonConfigState: Bool = false
    @Published var buttonPlayState: Bool = false
    @Published var buttonStopState: Bool = false
    
    // MARK: - Create pickers
    @Published var work = TimePickerModel(title: "Work", time: Array(0...30).map { String($0) }, selectedTime: 0)
    @Published var rest = TimePickerModel(title: "Rest", time: Array(0...10).map { String($0) }, selectedTime: 0)
    @Published var longRest = TimePickerModel(title: "LongRest", time: Array(0...30).map { String($0) }, selectedTime: 0)
    @Published var cycle = TimePickerModel(title: "Cicle", time: Array(0...5).map { String($0)}, selectedTime: 0)
    
    // MARK: - Pickers choosing time
    @Published var selectedWorkTime: Int = 25
    @Published var selectedRestTime: Int = 5
    @Published var selectedLongRestTime: Int = 15
    @Published var selectedCycleTime: Int = 4
    
   
    
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
    
    func changeTimer() {
        selectedWorkTime = Int(work.time[UserDefaults.standard.integer(forKey: "Work time")]) ?? 25
    }
}
