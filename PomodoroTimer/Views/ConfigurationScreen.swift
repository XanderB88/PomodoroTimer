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
                VStack(alignment: .center, spacing: 30) {
                    HStack {
                        Text(viewModel.work.title)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                        Spacer()
                        Text(viewModel.work.time[UserDefaults.standard.integer(forKey: "Work time")])
                            .frame(width: 100, height: 50)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                    }
                    .frame(width: 350, height: 100, alignment: .center)
                    
                    HStack {
                        Text(viewModel.rest.title)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                        Spacer()
                        Text(viewModel.rest.time[UserDefaults.standard.integer(forKey: "Rest time")])
                            .frame(width: 100, height: 50)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                    }
                    .frame(width: 350, height: 100, alignment: .center)
                    
                    HStack {
                        Text(viewModel.longRest.title)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                        Spacer()
                        Text(viewModel.longRest.time[UserDefaults.standard.integer(forKey: "Long rest time")])
                            .frame(width: 100, height: 50)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                    }
                    .frame(width: 350, height: 100, alignment: .center)
                    
                    HStack {
                        Text(viewModel.cycle.title)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
                        Spacer()
                        Text(viewModel.cycle.time[UserDefaults.standard.integer(forKey: "Cycle time")])
                            .frame(width: 100, height: 50)
                            .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                            .font(.custom("Quicksand-Regular", size: 26))
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
