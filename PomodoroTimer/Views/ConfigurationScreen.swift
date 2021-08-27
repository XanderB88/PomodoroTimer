//
//  ConfigurationScreen.swift
//  PomodoroTimer
//
//  Created by Alexander on 26.08.2021.
//

import SwiftUI

struct ConfigurationScreen: View {
    
    @EnvironmentObject var viewModel: MainViewModel
    @Binding var showingConfigurationScreen: Bool
    @Binding var configurationEditing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 30) {
                HStack {
                    Button(action: {
                        self.showingConfigurationScreen.toggle()
                        print(showingConfigurationScreen)
                    }, label: {
                        Text("Back")
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 16))
                    })
                    .buttonStyle(ButtonEditingStyle())
                    .padding()
                    Spacer()
                    Text("Pomodoro")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 32))
                    Spacer()
                    Button(action: {
                        self.configurationEditing.toggle()
                    }, label: {
                        Text("Edit")
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 16))
                    })
                    .buttonStyle(ButtonEditingStyle())
                    .padding()
                    
                }
                Spacer()
                HStack {
                    Text(viewModel.work.title)
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                    Spacer()
                    Text(viewModel.selectedWorkTimeText)
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                        .padding(.horizontal, 30)
                }
                .frame(width: 350, height: 100, alignment: .center)
                Spacer()
                VStack {
                    HStack {
                        Text(viewModel.rest.title)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                        Spacer()
                        Text(viewModel.selectedRestTimeText)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                            .padding(.horizontal, 40)
                    }
                    .frame(width: 350, height: 100, alignment: .center)
                    Spacer()
                    HStack {
                        Text(viewModel.longRest.title)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                        Spacer()
                        Text(viewModel.selectedLongRestTimeText)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                            .padding(.horizontal, 40)
                    }
                    .frame(width: 350, height: 100, alignment: .center)
                    Spacer()
                    HStack {
                        Text(viewModel.cycle.title)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                        Spacer()
                        Text(viewModel.selectedCycleTimeText)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                            .padding(.horizontal, 40)
                    }
                    .frame(width: 350, height: 100, alignment: .center)
                }
                Spacer()
            }
        }
        
    }
}


struct ConfigurationScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConfigurationScreen(showingConfigurationScreen: .constant(true), configurationEditing: .constant(true)).environmentObject(MainViewModel())
    }
}
