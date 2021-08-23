//
//  NavigationButton.swift
//  PomodoroTimer (iOS)
//
//  Created by Alexander on 23.08.2021.
//

import SwiftUI

struct ButtonNavigation: View {
    var body: some View {
            NavigationLink(
                destination: ConfigurationScreen(viewModel: ConfigurationViewModel()),
                label: {
                    Image(systemName: "gear")
                        .gradientForeground(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.8392156863, blue: 0.937254902, alpha: 1)), Color(#colorLiteral(red: 0.5725490196, green: 0.6, blue: 0.7607843137, alpha: 1))])
                        .font(.custom("Quicksand-Regular", size: 25))
                })
                .buttonStyle(ButtonCofigurationStyle())
    }
}

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavigation()
    }
}
