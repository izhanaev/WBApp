//
//  ContactInfoView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 26.06.2024.
//

import SwiftUI

struct ContactInfoView: View {
    
    var contact: Contact
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(contact.name) \(contact.surname)")
                .font(.headline)
            if contact.status {
                Text("Online")
                    .font(.subheadline)
                    .foregroundColor(.grayWB)
            } else {
                Text("Был в сети: \(dateFormatter.string(from: contact.lastSeen))")
                    .font(.subheadline)
                    .foregroundColor(.grayWB)
            }
        }
        .background(Color.backgroundWB)
    }
}

#Preview {
    ContactInfoView(contact: Contact(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: true, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
