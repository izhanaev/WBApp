//
//  ContactsListView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct ContactsListView: View {
    
    @Binding var contactPath: [ContactModel]
    @State private var contactSearch: String = ""
    
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
    
    private var filteredContacts: [ContactModel] {
        if contactSearch.isEmpty {
            return MockData.contacts
        } else {
            return MockData.contacts.filter { $0.name.contains(contactSearch) || $0.surname.contains(contactSearch) }
        }
    }
}

#Preview {
    ContactsListView(contactPath: .constant([ContactModel(id: 6, name: "Лиса", surname: "Алиса", avatar: nil, status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35")]))
}
