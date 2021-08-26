//
//  PickerView.swift
//  PomodoroTimer
//
//  Created by Alexander on 12.08.2021.
//

import SwiftUI

struct PickerView: View {
    
    var titleValue: String
    var timeValue: [String]
    @State var selectedTime: Int
    
    var body: some View {
        HStack {
            Text(titleValue)
                .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                .font(.custom("Quicksand-Regular", size: 26))
            
            Spacer()
            
            Picker(selection: $selectedTime, label: Text("selectedTime"), content: {
                ForEach(0..<timeValue.count, content: { timeIndex in
                    Text(timeValue[timeIndex])
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                })
            })
            .frame(width: 100, height: 50)
            .clipped()
            .border(Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), width: 1)
            .cornerRadius(3.0)
        }
        .frame(width: 350, height: 100, alignment: .center)
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(titleValue: "Title", timeValue: ["1", "2"], selectedTime: 15)
    }
}


