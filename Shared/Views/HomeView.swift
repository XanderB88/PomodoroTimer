//
//  ContentView.swift
//  Shared
//
//  Created by Alexander on 12.08.2021.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedPicker = timePickers()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 30) {
                Text("Pomodoro")
                    .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                    .font(.custom("Quicksand-Regular", size: 32))
                
                Spacer()
                
                PickerView(titleValue: selectedPicker.work.title, timeValue: selectedPicker.work.time, selectedTime: 15)
                PickerView(titleValue: selectedPicker.rest.title, timeValue: selectedPicker.rest.time, selectedTime: 4)
                PickerView(titleValue: selectedPicker.longRest.title, timeValue: selectedPicker.longRest.time, selectedTime: 15)
                PickerView(titleValue: selectedPicker.cicle.title, timeValue: selectedPicker.cicle.time, selectedTime: 3)
               
                Spacer()
              
                ButtonStart()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
