//
//  MainScreenView.swift
//  PomodoroTimer
//
//  Created by Alexander on 18.08.2021.
//

import SwiftUI

struct MainScreenView: View {
    @EnvironmentObject var viewModel: MainViewModel
    @Binding var showingConfigurationScreen: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 30) {
                HStack {
                    Button(action: {
                        viewModel.buttonBellState.toggle()
                    }, label: {
                        Image(systemName: viewModel.buttonBellState ? "bell.slash" : "bell")
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 25))
                    })
                    .buttonStyle(ButtonCofigurationStyle())
                    Spacer()
                    Text("Pomodoro")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 32))
                    Spacer()
                    Button(action: {
                        self.showingConfigurationScreen.toggle()
                        print(showingConfigurationScreen)
                    }, label: {
                        Image(systemName: "gear")
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 25))
                    })
                    .buttonStyle(ButtonCofigurationStyle())
                }
                .padding()
                Spacer()
                CountDownTimer(currentTime: String(viewModel.selectedWorkTime))
                    .onAppear(perform: viewModel.changeTimer)
                Spacer()
                Text("Work")
                    .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                    .font(.custom("Quicksand-Regular", size: 26))
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        viewModel.buttonPlayState.toggle()
                    }, label: {
                        Image(systemName: viewModel.buttonPlayState ? "pause" : "play")
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 40))
                    })
                    .buttonStyle(ButtonActionStyle())
                    Spacer()
                    Button(action: {
                        viewModel.buttonStopState.toggle()
                    }, label: {
                        Image(systemName: "stop")
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 40))
                    })
                    .buttonStyle(ButtonActionStyle())
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView(showingConfigurationScreen: .constant(false)).environmentObject(MainViewModel())
    }
}
