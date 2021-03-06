//
//  ContentView.swift
//  Shared
//
//  Created by Alexander on 12.08.2021.
//

import SwiftUI

struct ApplicationView: View {
    @State private var showingConfigurationScreen: Bool = false
    var body: some View {
        if showingConfigurationScreen {
            TabConfigurationScreens(showingConfigurationScreen: $showingConfigurationScreen)
        } else {
            MainScreenView(showingConfigurationScreen: $showingConfigurationScreen)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationView().environmentObject(MainViewModel())
    }
}
