//
//  PersonalContactView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct PersonalContactView: View {
    let contact: Contact
    var body: some View {
        Text("qwe")
    }
}

#Preview {
    PersonalContactView(contact: Contact(name: "Иван", surname: "Иванов", avatar: nil, status: true, story: "История 1", lastSeen: "1 минута назад"))
}
