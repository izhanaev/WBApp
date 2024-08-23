//
//  NavBarCustomButton.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

public struct NavBarCustomButton: View {
    
    public var bgColor: Color
    
    public init(bgColor: Color) {
        self.bgColor = bgColor
    }
    
    public var body: some View {
        Image(systemName: "chevron.left")
            .resizable()
            .frame(width: 7.42, height: 12.02)
            .foregroundStyle(bgColor)
            .bold()
    }
}

#Preview {
    NavBarCustomButton(bgColor: .black)
}
