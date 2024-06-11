//
//  InformationTextView.swift
//  IMC
//
//  Created by Marcelo De Araújo on 11/06/24.
//

import SwiftUI

struct InformationTextView: View {
    let text: String
    let font: Font
    let color: Color

    var body: some View {
        Text(text)
            .font(font)
            .bold()
            .foregroundStyle(Color(hex: "111111"))
    }
}
