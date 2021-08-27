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


    
