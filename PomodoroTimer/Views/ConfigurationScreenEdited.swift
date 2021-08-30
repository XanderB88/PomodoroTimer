//
//  ConfiguraionScreen.swift
//  PomodoroTimer
//
//  Created by Alexander on 18.08.2021.
//

import SwiftUI

struct ConfigurationScreenEdited: View {
    @EnvironmentObject var viewModel: MainViewModel
    @Binding var showingConfigurationScreen: Bool
    @Binding var configurationEditing: Bool
    
    // MARK: - Pickers selected time
    @State var selectedWorkTime: Int = 25
    @State var selectedRestTime: Int = 5
    @State var selectedLongRestTime: Int = 15
    @State var selectedCycleTime: Int = 4
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 30) {
               
                HStack {
                    Button(action: {
                        self.configurationEditing.toggle()
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
                        viewModel.selectedWorkTimeText = viewModel.work.time[selectedWorkTime]
                        viewModel.selectedRestTimeText = viewModel.rest.time[selectedRestTime]
                        viewModel.selectedLongRestTimeText = viewModel.longRest.time[selectedLongRestTime]
                        viewModel.selectedCycleTimeText = viewModel.cycle.time[selectedCycleTime]
                    }, label: {
                        Text("Save")
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
               
                    Picker(selection: $selectedWorkTime, label: Text(viewModel.work.title), content: {
                    ForEach(0..<viewModel.work.time.count, content: { selectedTime in
                        Text(viewModel.work.time[selectedTime])
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
        
                HStack {
                    Text(viewModel.rest.title)
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                    
                    Spacer()
               
                    Picker(selection: $selectedRestTime, label: Text(viewModel.rest.title), content: {
                    ForEach(0..<viewModel.rest.time.count, content: { selectedTime in
                        Text(viewModel.rest.time[selectedTime])
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
                
                HStack {
                    Text(viewModel.longRest.title)
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                    
                    Spacer()
               
                    Picker(selection: $selectedLongRestTime, label: Text(viewModel.longRest.title), content: {
                    ForEach(0..<viewModel.longRest.time.count, content: { selectedTime in
                        Text(viewModel.longRest.time[selectedTime])
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
                
                HStack {
                    Text(viewModel.cycle.title)
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                    
                    Spacer()
               
                    Picker(selection: $selectedCycleTime, label: Text(viewModel.work.title), content: {
                    ForEach(0..<viewModel.cycle.time.count, content: { selectedTime in
                        Text(viewModel.cycle.time[selectedTime])
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
                
                Spacer()
            }
        }
        
    }
}


struct ConfiguraionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConfigurationScreenEdited(showingConfigurationScreen: .constant(true), configurationEditing: .constant(true)).environmentObject(MainViewModel())
    }
}
