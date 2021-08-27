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
    @Published var work = TimePickerModel(title: "Work", time: Array(10...30).map { String($0) }, selectedTime: 15)
    @Published var rest = TimePickerModel(title: "Rest", time: Array(1...10).map { String($0) }, selectedTime: 4)
    @Published var longRest = TimePickerModel(title: "LongRest", time: Array(10...30).map { String($0) }, selectedTime: 15)
    @Published var cycle = TimePickerModel(title: "Cicle", time: Array(1...5).map { String($0)}, selectedTime: 3)
    
    // MARK: - Pickers selected time
    @Published var selectedWorkTime: Int = 25
    @Published var selectedRestTime: Int = 5
    @Published var selectedLongTime: Int = 20
    @Published var selectedCycleTime: Int = 3
    
    // MARK: - Pickers selected time text format
    @Published var selectedWorkTimeText: String = "25"
    @Published var selectedRestTimeText: String = "5"
    @Published var selectedLongRestTimeText: String = "15"
    @Published var selectedCycleTimeText: String = "4"
    
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
