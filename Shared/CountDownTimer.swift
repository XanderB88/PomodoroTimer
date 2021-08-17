//
//  CountDownTimer.swift
//  PomodoroTimer
//
//  Created by Alexander on 17.08.2021.
//

import SwiftUI

struct CountDownTimer: View {
    var currentTimeIndication: Float = 0.8
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2470588235, green: 0.2705882353, blue: 0.3960784314, alpha: 1)), Color(#colorLiteral(red: 0.168627451, green: 0.1882352941, blue: 0.2941176471, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                Circle()
                    .fill(Color(#colorLiteral(red: 0.2274509804, green: 0.2431372549, blue: 0.3529411765, alpha: 1)))
                    .frame(width: 300, height: 300, alignment: .center)
                    .shadow(color: Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)).opacity(0.5), radius: 4, x: -5.0, y: -5.0)
                    .shadow(color: Color(#colorLiteral(red: 0.1490196078, green: 0.1705401411, blue: 0.283983558, alpha: 1)).opacity(0.1), radius: 4, x: 10.0, y: 10.0)
                Circle()
                    .stroke(Color(#colorLiteral(red: 0.2332491875, green: 0.2561515868, blue: 0.3861487508, alpha: 1)), lineWidth: 4.0)
                    .frame(width: 200, height: 200, alignment: .center)
                    .shadow(color: Color(#colorLiteral(red: 0.3529411765, green: 0.3803921569, blue: 0.5529411765, alpha: 1)).opacity(1), radius: 1, x: 1.0, y: 1.0)
                    .overlay(
                    Circle()
                        .stroke(Color(#colorLiteral(red: 0.2039215686, green: 0.2235294118, blue: 0.3215686275, alpha: 1)), lineWidth: 4.0)
                        .blur(radius: 1.0)
                        .offset(x: 1.0, y: 1.0)
                    )
                Circle()
                    .trim(from: 0.0, to: CGFloat(currentTimeIndication))
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3803921569, green: 0.1843137255, blue: 0.9607843137, alpha: 1)), Color(#colorLiteral(red: 0.5215686275, green: 0.3607843137, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 4.0)
                    .frame(width: 200, height: 200, alignment: .center)
                    .rotationEffect(.degrees(-90))
                    .overlay(
                    Circle()
                        .trim(from: 0.0, to: CGFloat(currentTimeIndication))
                        .stroke(Color(#colorLiteral(red: 0.5607843137, green: 0.4117647059, blue: 1, alpha: 1)), lineWidth: 4.0)
                        .blur(radius: 1.0)
                        .offset(x: -1.0, y: 2.0)
                        .rotationEffect(.degrees(-90))
                    )
                    
                VStack {
                    Text("20")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 45))
                    Text("minute")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 26))
                }
            }
        }
    }
}

struct CountDownTimer_Previews: PreviewProvider {
    static var previews: some View {
        CountDownTimer()
    }
}
