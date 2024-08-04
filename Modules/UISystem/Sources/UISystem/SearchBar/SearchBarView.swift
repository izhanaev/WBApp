//
//  SearchBarView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

public struct SearchBarView: View {
    
    @Binding var contactSearch: String
    public var bgColor: Color
    public var bgColorBar: Color
    
    public init(contactSearch: Binding<String>, bgColor: Color, bgColorBar: Color) {
        self._contactSearch = contactSearch
        self.bgColor = bgColor
        self.bgColorBar = bgColorBar
    }
    
    public var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(bgColor)
            TextField("",
                      text: $contactSearch,
                      prompt: Text(NSLocalizedString("search", comment: ""))
                .foregroundColor(bgColor))
        }
        .bold()
        .padding(.vertical, 6)
        .padding(.leading, 8)
        .background(RoundedRectangle(cornerRadius: 4)
            .fill(bgColorBar))
    }
    
}

#Preview {
    SearchBarView(contactSearch: .constant("search"), bgColor: .gray, bgColorBar: .white)
}
