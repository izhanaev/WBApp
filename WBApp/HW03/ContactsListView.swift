//
//  ContactsListView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct ContactsListView {
    @Binding var contactPath: [Contact]
    let contacts: [Contact] = [
        Contact(name: "Иван", surname: "Иванов", avatar: nil, status: true, story: "История 1", lastSeen: "1 минута назад"),
        Contact(name: "Петр1", surname: "Петров", avatar: nil, status: false, story: "История 2", lastSeen: "5 минут назад"),
        Contact(name: "Петр2", surname: "Петров", avatar: nil, status: false, story: "История 2", lastSeen: "5 минут назад"),
        Contact(name: "Петр3", surname: "Петров", avatar: nil, status: false, story: "История 2", lastSeen: "5 минут назад"),
        Contact(name: "Петр4", surname: "Петров", avatar: nil, status: false, story: "История 2", lastSeen: "5 минут назад")
    ]
    
    var body: some View {
        VStack {
            
        }
    }
}
