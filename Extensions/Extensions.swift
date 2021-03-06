//
//  Extensions.swift
//  PomodoroTimer (iOS)
//
//  Created by Alexander on 23.08.2021.
//

import Foundation
import SwiftUI

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: .init(colors: colors),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
            .mask(self)
    }
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct ButtonActionStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 40, height: 40)
            .padding()
            .background(
                Group {
                    if configuration.isPressed {
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(LinearGradient(Color(#colorLiteral(red: 0.2588235294, green: 0.2823529412, blue: 0.4117647059, alpha: 1)), Color(#colorLiteral(red: 0.3725490196, green: 0.4039215686, blue: 0.568627451, alpha: 1))))
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
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.2274509804, green: 0.2431372549, blue: 0.3529411765, alpha: 1)))
                                .shadow(color: Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)).opacity(0.5), radius: 4, x: -5.0, y: -5.0)
                                .shadow(color: Color(#colorLiteral(red: 0.1490196078, green: 0.1705401411, blue: 0.283983558, alpha: 1)).opacity(0.1), radius: 4, x: 10.0, y: 10.0)
                            RoundedRectangle(cornerRadius: 19)
                                .stroke(LinearGradient(Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))), lineWidth: 1.0)
                        }
                    }
                    
                })
    }
}

struct ButtonConfigurationStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 15, height: 15)
            .padding()
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(LinearGradient(Color(#colorLiteral(red: 0.2588235294, green: 0.2823529412, blue: 0.4117647059, alpha: 1)), Color(#colorLiteral(red: 0.3725490196, green: 0.4039215686, blue: 0.568627451, alpha: 1))))
                            .overlay(
                                Circle()
                                    .stroke(Color(#colorLiteral(red: 0.1490196078, green: 0.1705401411, blue: 0.283983558, alpha: 1)), lineWidth: 4.0)
                                    .blur(radius: 4.0)
                                    .offset(x: 3.0, y: 3.0)
                                    .mask(RoundedRectangle(cornerRadius: 20.0).fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)), lineWidth: 10.0)
                                    .blur(radius: 4.0)
                                    .offset(x: -3.0, y: -3.0)
                                    .mask(RoundedRectangle(cornerRadius: 20.0).fill(LinearGradient(Color.black, Color.clear)))
                            )
                    } else {
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.2274509804, green: 0.2431372549, blue: 0.3529411765, alpha: 1)))
                                .shadow(color: Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)).opacity(0.5), radius: 4, x: -5.0, y: -5.0)
                                .shadow(color: Color(#colorLiteral(red: 0.1490196078, green: 0.1705401411, blue: 0.283983558, alpha: 1)).opacity(0.1), radius: 4, x: 10.0, y: 10.0)
                            Circle()
                                .stroke(LinearGradient(Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))), lineWidth: 1.0)
                        }
                    }
                })
    }
}

struct ButtonEditingStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 40, height: 8)
            .padding()
            .background(
                Group {
                    if configuration.isPressed {
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(LinearGradient(Color(#colorLiteral(red: 0.2588235294, green: 0.2823529412, blue: 0.4117647059, alpha: 1)), Color(#colorLiteral(red: 0.3725490196, green: 0.4039215686, blue: 0.568627451, alpha: 1))))
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
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.2274509804, green: 0.2431372549, blue: 0.3529411765, alpha: 1)))
                                .shadow(color: Color(#colorLiteral(red: 0.3333333333, green: 0.3647058824, blue: 0.5137254902, alpha: 1)).opacity(0.5), radius: 4, x: -5.0, y: -5.0)
                                .shadow(color: Color(#colorLiteral(red: 0.1490196078, green: 0.1705401411, blue: 0.283983558, alpha: 1)).opacity(0.1), radius: 4, x: 10.0, y: 10.0)
                            RoundedRectangle(cornerRadius: 19)
                                .stroke(LinearGradient(Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))), lineWidth: 1.0)
                        }
                    }
                    
                })
    }
}



