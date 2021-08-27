//
//  TabConfigurationScreens.swift
//  PomodoroTimer
//
//  Created by Alexander on 27.08.2021.
//

import SwiftUI

struct TabConfigurationScreens: View {
    @State var configurationEditing: Bool = false
    @Binding var showingConfigurationScreen: Bool
    var body: some View {
        if configurationEditing {
            ConfigurationScreenEdited(showingConfigurationScreen: $showingConfigurationScreen, configurationEditing: $configurationEditing, selectedTime: .constant(20))
        } else {
            ConfigurationScreen(showingConfigurationScreen: $showingConfigurationScreen, configurationEditing: $configurationEditing)
        }
    }
}

struct TabConfigurationScreens_Previews: PreviewProvider {
    static var previews: some View {
        TabConfigurationScreens(showingConfigurationScreen: .constant(true))
    }
}
