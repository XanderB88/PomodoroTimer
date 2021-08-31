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
    @Published var selectedWorkTime = 25
    @Published var selectedRestTime: Int = 5
    @Published var selectedLongRestTime: Int = 15
    @Published var selectedCycleTime: Int = 4
    
    // MARK: - Pickers selected time read from memory
   @Published var selectedWorkTimeIndex: Int = UserDefaults.standard.integer(forKey: "Work time")
   @Published var selectedRestTimeIndex: Int = UserDefaults.standard.integer(forKey: "Rest time")
   @Published var selectedLongRestTimeIndex: Int = UserDefaults.standard.integer(forKey: "Long rest time")
   @Published var selectedCycleTimeIndex: Int = UserDefaults.standard.integer(forKey: "Cycle time")
   
   func writeInMemory() {
       UserDefaults.standard.set(self.selectedWorkTimeIndex, forKey: "Work time")
       UserDefaults.standard.set(self.selectedRestTimeIndex, forKey: "Rest time")
       UserDefaults.standard.set(self.selectedLongRestTimeIndex, forKey: "Long rest time")
       UserDefaults.standard.set(self.selectedCycleTimeIndex, forKey: "Cycle time")
   }
    
    
    
    // MARK: - Timer
    
    enum TimerMode {
        case initial
        case running
        case paused
    }
    
    func secondsToMinutesAndSeconds(seconds: Int) -> String {
        let minutes = "\((seconds % 3600) / 60)"
        let seconds = "\((seconds % 3600) % 60)"
        let minuteStamp = minutes.count > 1 ? minutes : "0" + minutes
        let secondStamp = seconds.count > 1 ? seconds : "0" + seconds
        
        return "\(minuteStamp) : \(secondStamp)"
    }
    
    
    @Published var timerMode: TimerMode = .initial
    
    var timer = Timer()
    
    func startTimer() {
        timerMode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            if self.selectedWorkTime == 0 {
                self.resetTimer()
            }
            self.selectedWorkTime -= 1
        })
    }
    
    func resetTimer() {
        self.timerMode = .initial
        self.selectedWorkTime = Int(work.time[UserDefaults.standard.integer(forKey: "Work time")]) ?? 25
        timer.invalidate()
    }
    
    func pauseTimer() {
        self.timerMode = .paused
        timer.invalidate()
    }
    
    func muteTimer() {
        print("Timer was mute")
    }
}




