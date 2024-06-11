//
//  CalculatorView.swift
//  IMC
//
//  Created by marcelodearaujo on 11/06/24.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var altura: Double
    @State var peso: Double
    @State var idade: Int
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CalculatorView(altura: 1.70, peso: 100, idade: 23)
}
