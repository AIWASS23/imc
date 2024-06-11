//
//  DataComponentView.swift
//  IMC
//
//  Created by Marcelo De Araújo on 11/06/24.
//

import SwiftUI

struct DataComponentView: View {
    let text: String
    @Binding var numberDefault: Int

    var body: some View {
        VStack {
            InformationTextView(text: text, font: .title, color: .brown)
            InformationTextView(text: "\(Int(numberDefault))", font: .title, color: .cyan)
            HStack {
                Button(action: {if (numberDefault > 0){numberDefault -= 1}}, label: {
                    ImageButtomView(imageName: "minus")
                })
                Button(action: {if (numberDefault > 0){numberDefault += 1}}, label: {
                    ImageButtomView(imageName: "plus")
                })
            }
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "242752"))
            .cornerRadius(16)
    }
}
