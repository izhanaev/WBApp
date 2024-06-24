//
//  NavBarCustomButton.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct NavBarCustomButton: View {
    var body: some View {
        Image(systemName: "chevron.left")
            .resizable()
            .frame(width: 7.42, height: 12.02)
            .foregroundStyle(.mainTextWB)
            .bold()
    }
}

#Preview {
    NavBarCustomButton()
}
