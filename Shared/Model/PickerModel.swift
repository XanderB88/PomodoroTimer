//
//  PickerModel.swift
//  PomodoroTimer
//
//  Created by Alexander on 12.08.2021.
//

import SwiftUI

// Create structure of Picker
struct TimePickerModel: Identifiable {
    var id = UUID()
    var title: String
    var time: [String]
    var selectedTime: Int
}

// Create Pickers
struct timePickers {
    var work = TimePickerModel(title: "Work", time: Array(10...30).map { String($0) }, selectedTime: 15)
    var rest = TimePickerModel(title: "Rest", time: Array(1...10).map { String($0) }, selectedTime: 4)
    var longRest = TimePickerModel(title: "LongRest", time: Array(10...30).map { String($0) }, selectedTime: 15)
    var cicle = TimePickerModel(title: "Cicle", time: Array(1...5).map { String($0)}, selectedTime: 3)
}
    
