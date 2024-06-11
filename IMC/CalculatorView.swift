//
//  CalculatorView.swift
//  IMC
//
//  Created by marcelodearaujo on 11/06/24.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var altura: Double = 150
    @State var idade: Int = 20
    @State var peso: Int = 70

    var body: some View {
        VStack {
            HeightCalculatorView(selectedHeight: $altura)
                .padding()
            HStack {
                DataComponentView(text: "Idade", numberDefault: $idade)
                    .padding()
                DataComponentView(text: "Peso", numberDefault: $peso)
                    .padding()
            }
            CalculatorButton(userWeight: Double(peso), userHeight: altura, text: "Calcular")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar{
            ToolbarItem(placement: .principal){
                Text("IMC")
                    .bold()
                    .foregroundStyle(.white)
            }
        }
        .cornerRadius(3.0)
        .background(Color(hex: "0E0A1F"))
    }
}
