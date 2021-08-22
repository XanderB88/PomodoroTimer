//
//  ActionButton.swift
//  PomodoroTimer
//
//  Created by Alexander on 17.08.2021.
//

import SwiftUI




struct ButtonAction: View {
    var buttonSymbol: String = "play"
    var function: () -> Void
    var changes: () -> Void
   
    
    var body: some View {
        ZStack {
            Button(action: {
                self.function()
                self.changes()
            }, label: {
              Image(systemName: buttonSymbol)
                .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                .font(.custom("Quicksand-Regular", size: 40))
            })
            .buttonStyle(ButtonActionStyle())
        }
    }
}

func previewActionButton() {
    print("Success")
}
func previewStatusOfActionButton() {
   print("Button state changed")
}
struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAction(function: previewActionButton, changes: previewStatusOfActionButton)
    }
}
