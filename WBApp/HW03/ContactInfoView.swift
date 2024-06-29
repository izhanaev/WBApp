//
//  ContactInfoView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 26.06.2024.
//

import SwiftUI

struct ContactInfoView: View {
    
    var contact: ContactModel
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var body: some View {
        let lastSeenDateString = dateFormatter.string(from: contact.lastSeen)
        let lastSeenLocalizedString = String.localizedStringWithFormat(NSLocalizedString("lastSeen", comment: ""), lastSeenDateString)
        
        VStack(alignment: .leading) {
            Text("\(contact.name) \(contact.surname)")
                .font(.headline)
            if contact.status {
                Text(NSLocalizedString("online", comment: ""))
                    .font(.subheadline)
                    .foregroundColor(.grayWB)
            } else {
                Text(lastSeenLocalizedString)
                    .font(.subheadline)
                    .foregroundColor(.grayWB)
            }
        }
        .background(Color.backgroundWB)
    }
}

#Preview {
    ContactInfoView(contact: ContactModel(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
