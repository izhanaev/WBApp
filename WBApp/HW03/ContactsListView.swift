//
//  ContactsListView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct ContactsListView: View {
    @Binding var contactPath: [Contact]
    private let contacts: [Contact] = [
        .init(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: false, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 2, name: "Петя", surname: "", avatar: "Person2", status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 3, name: "Маман", surname: "", avatar: "Person3", status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 4, name: "Арбуз", surname: "Дыня", avatar: "Person4", status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 5, name: "Иван", surname: "Иванов", avatar: nil, status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 6, name: "Лиса", surname: "Алиса", avatar: nil, status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35")
    ]
    
    var body: some View {
        List(contacts) { contact in
            Button {
                contactPath.append(contact)
            } label: {
                ContactCellView(contact: contact)
            }
//            NavigationLink(destination: PersonalContactView(contact: contact)
//            ) { }
        }
//        .navigationDestination(for: Contact.self) { contact in
//            PersonalContactView(contact: contact)
        
    }
}

#Preview {
    ContactsListView(contactPath: .constant([Contact(id: 6, name: "Лиса", surname: "Алиса", avatar: nil, status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35")]))
}
