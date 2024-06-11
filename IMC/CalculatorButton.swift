//
//  CalculatorButton.swift
//  IMC
//
//  Created by Marcelo De Araújo on 11/06/24.
//

import SwiftUI

struct CalculatorButton:View {
    let userWeight: Double
    let userHeight: Double
    let text: String

    var body: some View {
        NavigationStack {
            NavigationLink(
                destination: {
                    ResultsView(altura: userWeight, peso: userHeight)
                }
            ){
                Text(text)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.orange)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(.cyan)
        .cornerRadius(16)
    }
}
