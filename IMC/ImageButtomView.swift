//
//  ImageButtomView.swift
//  IMC
//
//  Created by Marcelo De Araújo on 11/06/24.
//

import SwiftUI

struct ImageButtomView: View {
    let imageName: String

    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
        .clipShape(.circle)
    }
}
