//
//  ActionButton.swift
//  PomodoroTimer
//
//  Created by Alexander on 17.08.2021.
//

import SwiftUI




struct ActionButton: View {
    var buttonSymbol: String = "play"
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                
            }, label: {
              Image(systemName: buttonSymbol)
                .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                .font(.custom("Quicksand-Regular", size: 40))
            })
            .buttonStyle(ActionButtonStyle())
        }
    }
}

struct ActionButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 50, height: 50)
            .padding()
            .background(
                Group {
                    if configuration.isPressed {
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(Color(#colorLiteral(red: 0.2274509804, green: 0.2431372549, blue: 0.3529411765, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20.0)
                                    .stroke(Color(#colorLiteral(red: 0.1490196078, green: 0.1705401411, blue: 0.283983558, alpha: 1)), lineWidth: 4.0)
                                    .blur(radius: 4.0)
                                    .offset(x: 3.0, y: 3.0)
                                    .mask(RoundedRectangle(cornerRadius: 20.0).fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 20.0)
                                    .stroke(Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)), lineWidth: 10.0)
                                    .blur(radius: 4.0)
                                    .offset(x: -3.0, y: -3.0)
                                    .mask(RoundedRectangle(cornerRadius: 20.0).fill(LinearGradient(Color.black, Color.clear)))
                        )
                    } else {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.2274509804, green: 0.2431372549, blue: 0.3529411765, alpha: 1)))
                            .shadow(color: Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)).opacity(0.5), radius: 4, x: -5.0, y: -5.0)
                            .shadow(color: Color(#colorLiteral(red: 0.1490196078, green: 0.1705401411, blue: 0.283983558, alpha: 1)).opacity(0.1), radius: 4, x: 10.0, y: 10.0)
                    }
                })
    }
}


struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton()
    }
}
