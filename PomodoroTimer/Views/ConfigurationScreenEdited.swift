//
//  ConfiguraionScreen.swift
//  PomodoroTimer
//
//  Created by Alexander on 18.08.2021.
//

import SwiftUI

struct ConfigurationScreenEdited: View {
    @State var selectedPicker = timePickers()
    @Binding var showingConfigurationScreen: Bool
    @Binding var selectedTime: Int
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 30) {
                Text("Pomodoro")
                    .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                    .font(.custom("Quicksand-Regular", size: 32))
                Spacer()
                PickerView(titleValue: selectedPicker.work.title, timeValue: selectedPicker.work.time, selectedTime: selectedTime)
                PickerView(titleValue: selectedPicker.rest.title, timeValue: selectedPicker.rest.time, selectedTime: selectedTime)
                PickerView(titleValue: selectedPicker.longRest.title, timeValue: selectedPicker.longRest.time, selectedTime: selectedTime)
                PickerView(titleValue: selectedPicker.cicle.title, timeValue: selectedPicker.cicle.time, selectedTime: selectedTime)
                Spacer()
                Button(action: {
                    self.showingConfigurationScreen.toggle()
                    print(showingConfigurationScreen)
                }, label: {
                    Image(systemName: "tray.and.arrow.down")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 40))
                })
                .buttonStyle(ButtonActionStyle())
            }
        }
        
    }
}


struct ConfiguraionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConfigurationScreenEdited(showingConfigurationScreen: .constant(true), selectedTime: .constant(5))
    }
}