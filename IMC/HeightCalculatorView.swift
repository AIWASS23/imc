//
//  HeightCalculatorView.swift
//  IMC
//
//  Created by Marcelo De Araújo on 11/06/24.
//

import SwiftUI

struct HeightCalculatorView: View {
    @Binding var selectedHeight: Double

    var body: some View {
        VStack{
            InformationTextView(text: "Altura", font: .title, color: .white)
            InformationTextView(text: "\(Int(selectedHeight)) CM", font: .largeTitle, color: .white)
            Slider(value: $selectedHeight, in: 100...230, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 16)
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color(hex: "23F1B4"))
            .cornerRadius(16)
    }
}

