//
//  ContactCellView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 25.06.2024.
//

import SwiftUI

struct ContactCellView: View {
    
    var contact: ContactModel
    
    var body: some View {
            HStack {
                ContactAvatarView(contact: contact)
                    .padding(.trailing, 6)
                
                ContactInfoView(contact: contact)
            }
            .padding(.vertical, 6)
            .background(Color.backgroundWB)
        }
}

#Preview {
    ContactCellView(contact: ContactModel(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
