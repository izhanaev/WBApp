//
//  ContactsListView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct ContactsListView: View {
    
    @Binding var contactPath: [Contact]
    @State private var contactSearch: String = ""
    
    private let contacts: [Contact] = [
        .init(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: false, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 2, name: "Петя", surname: "", avatar: "Person2", status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 3, name: "Маман", surname: "", avatar: "Person3", status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 4, name: "Арбуз", surname: "Дыня", avatar: "Person4", status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 5, name: "Иван", surname: "Иванов", avatar: nil, status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 6, name: "Лиса", surname: "Алиса", avatar: nil, status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35")
    ]
    
    var body: some View {
        VStack {
            ContactsSearchBarView(contactSearch: $contactSearch)
                .padding(.horizontal)
            
            List {
                ForEach(filteredContacts, id: \.id) { contact in
                    Button {
                        contactPath.append(contact)
                    } label: {
                        ContactCellView(contact: contact)
                    }
                    
                    .listRowBackground(Color.backgroundWB)
                }
            }
            .listStyle(PlainListStyle())
            .background(Color.backgroundWB)
        }
        .background(Color.backgroundWB)
    }
    
    private var filteredContacts: [Contact] {
        if contactSearch.isEmpty {
            return contacts
        } else {
            return contacts.filter { $0.name.contains(contactSearch) || $0.surname.contains(contactSearch) }
        }
    }
}

#Preview {
    ContactsListView(contactPath: .constant([Contact(id: 6, name: "Лиса", surname: "Алиса", avatar: nil, status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35")]))
}
