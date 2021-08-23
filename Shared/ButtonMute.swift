//
//  ButtonConfiguraton.swift
//  PomodoroTimer
//
//  Created by Alexander on 18.08.2021.
//

import SwiftUI

struct ButtonMute: View {
    var buttonSymbol: String = "gear"
    var function: () -> Void
    var changes: () -> Void
    
    var body: some View {
        ZStack {
            Button(action: {
                self.changes()
                self.function()
            }, label: {
                Image(systemName: buttonSymbol)
                    .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                    .font(.custom("Quicksand-Regular", size: 25))
            })
            .buttonStyle(ButtonCofigurationStyle())
        }
    }
}

struct ButtonConfiguraton_Previews: PreviewProvider {
    static func previewConfigurationButton() {
    }
    
    static func previewStatusOfButton() {
    }
    
    static var previews: some View {
        ButtonMute(function: previewConfigurationButton, changes: previewStatusOfButton)
    }
}
