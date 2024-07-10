//
//  ContactsSearchBarView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct ContactsSearchBarView: View {
    
    @Binding var contactSearch: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.grayWB)
            TextField("",
                      text: $contactSearch,
                      prompt: Text(NSLocalizedString("search", comment: ""))
                .foregroundStyle(.grayWB))
        }
        .bold()
        .padding(.vertical, 6)
        .padding(.leading, 8)
        .background(RoundedRectangle(cornerRadius: 4)
            .fill(.barBackgroundWB))
    }
    
}

#Preview {
    ContactsSearchBarView(contactSearch: .constant(""))
}
