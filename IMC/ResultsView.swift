//
//  ResultsView.swift
//  IMC
//
//  Created by marcelodearaujo on 11/06/24.
//

import SwiftUI

struct ResultsView: View {
    
    let altura: Double
    let peso: Double
    
    var body: some View {
        let information = imc(result: calcular(altura: altura, peso: peso))
        VStack{
            VStack{
                Spacer()
                Text(information.0)
                    .font(.title)
                    .bold()
                    .foregroundStyle(.blue)
                Spacer()
                Text(String(format: "%.2f", calcular(altura: altura, peso: peso)))
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(information.2)
                Spacer()
                Text(information.1)
                    .font(.title2)
                    .foregroundStyle(.brown)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(ignoresSafeAreaEdges: .all)
            .clipShape(.rect(cornerRadius: 16, style: .continuous))
            .padding()
        }
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Resultado")
                    .bold()
                    .foregroundStyle(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background()
    }
    
    func imc(result: Double) -> (String, String, Color) {
        
        let title: String
        let description: String
        let color: Color
        
        switch result {
        case 0.00 ... 19.99:
            title = "Peso Baixo"
            description = "Segundo a regra do IMC está com pouco peso"
            color = .yellow
            
        case 20.00 ... 24.99:
            title = "Peso Recomendado"
            description = "Segundo a regra do IMC está com o peso recomendado"
            color = .green
            
        case 25.00 ... 29.99:
            title = "SobrePeso"
            description = "Segundo a regra do IMC está com sobrepeso"
            color = .orange
            
        case 30.00 ... 100:
            title = "Obesidade"
            description = "Segundo a regra do IMC está com obesidade"
            color = .red
            
        default:
            title = "Error"
            description = "Ocorreu um erro"
            color = .gray
        }
        
        return(title, description, color)
    }
    
    func calcular(altura: Double, peso: Double) -> Double {
        let result = peso / (altura * altura)
        return result
    }
}

#Preview {
    ResultsView(altura: 1.70, peso: 100)
}
