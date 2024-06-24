//
//  NavBarCustomName.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct NavBarCustomName: View {
    @State var titleNavBar: String
    var body: some View {
        Text(titleNavBar)
            .font(.title3)
            .foregroundStyle(.mainTextWB)
            .bold()
    }
}

#Preview {
    NavBarCustomName(titleNavBar: "Контакты")
}
