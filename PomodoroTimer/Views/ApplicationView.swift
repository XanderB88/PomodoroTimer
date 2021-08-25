//
//  ContentView.swift
//  Shared
//
//  Created by Alexander on 12.08.2021.
//

import SwiftUI

struct ApplicationView: View {
    var body: some View {
        MainScreenView(viewModel: MainViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationView()
    }
}
