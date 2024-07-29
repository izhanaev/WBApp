//
//  NavBarCustomName.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

public struct NavBarCustomName: View {
    @State var titleNavBar: String
    public var bgColor: Color
    
    public init(titleNavBar: String, bgColor: Color) {
        self.titleNavBar = titleNavBar
        self.bgColor = bgColor
    }
    
    public var body: some View {
        Text(titleNavBar)
            .font(.title3)
            .foregroundStyle(bgColor)
            .bold()
    }
}

#Preview {
    NavBarCustomName(titleNavBar: "Контакты", bgColor: .black)
}
