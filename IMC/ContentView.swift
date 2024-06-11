//
//  ContentView.swift
//  IMC
//
//  Created by marcelodearaujo on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: CalculatorView()) {
                    Text("IMC")
                        .bold()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
