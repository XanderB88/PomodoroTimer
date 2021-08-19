//
//  MainScreenView.swift
//  PomodoroTimer
//
//  Created by Alexander on 18.08.2021.
//

import SwiftUI

struct MainScreenView: View {
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 30) {
                HStack {
                    ButtonConfiguraton(buttonSymbol:"bell", function: viewModel.muteTimer)
                    Spacer()
                    Text("Pomodoro")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 32))
                    Spacer()
                    ButtonConfiguraton(buttonSymbol: "gear", function: viewModel.nothing)
                }
                .padding()
                Spacer()
                CountDownTimer()
                Spacer()
                Text("Work")
                    .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                    .font(.custom("Quicksand-Regular", size: 26))
                Spacer()
                HStack {
                    Spacer()
                    ButtonAction(buttonSymbol: "play", function: viewModel.startTimer)
                    Spacer()
                    ButtonAction(buttonSymbol: "stop", function: viewModel.stopTimer)
                    Spacer()
                }
                Spacer()
            }
            
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView(viewModel: MainViewModel())
    }
}
