//
//  PersonalContactInfoView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 30.06.2024.
//

import SwiftUI

struct PersonalContactInfoView: View {
    var contact: ContactModel
    
    var body: some View {
        VStack {
            Text("\(contact.name) \(contact.surname)")
                .font(.headline)
                .foregroundStyle(.mainTextWB)
            Text(contact.phoneNumber)
                .foregroundStyle(.grayWB)
        }
        .background(Color.backgroundWB)
    }
}

#Preview {
    PersonalContactInfoView(contact: ContactModel(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
