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
               
                Button(action: {
                    
                }, label: {
                    Text("Let's do some work")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                })
                .frame(width: 250, height: 50)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2588235294, green: 0.2823529412, blue: 0.4117647059, alpha: 1)), Color(#colorLiteral(red: 0.2901960784, green: 0.3176470588, blue: 0.4705882353, alpha: 1))]), startPoint: .topLeading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.25), radius: 4, x: 0.0, y: 4.0)
                .shadow(color: Color(#colorLiteral(red: 0.1490196078, green: 0.1921568627, blue: 0.4117647059, alpha: 1)).opacity(0.5), radius: 1, x: 1.0, y: 1.0)
                .shadow(color: Color(#colorLiteral(red: 0.3254901961, green: 0.3607843137, blue: 0.5333333333, alpha: 1)).opacity(0.12), radius: 4, x: -1.0, y: -1.0)
                .shadow(color: Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)).opacity(0.56), radius: 20, x: -4.0, y: -6.0)
                .shadow(color: Color(#colorLiteral(red: 0.2117647059, green: 0.231372549, blue: 0.3411764706, alpha: 1)).opacity(0.20), radius: 18, x: 8.0, y: 8.0)
            }
        }
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
