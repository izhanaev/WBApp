//
//  ContactCellView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 25.06.2024.
//

import SwiftUI

struct ContactCellView: View {
    let gradient = Gradient(colors: [.storyGradient1WB, .storyGradient2WB])
    var contact: Contact
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    
    var body: some View {
        HStack {
            ZStack {
                if contact.story {
                    RoundedRectangle(cornerRadius: 18, style: .continuous)
                        .fill(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 56, height: 56)
                        .overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Color.white, lineWidth: 3))
                }
                if let avatar = contact.avatar {
                    Image(uiImage: UIImage(named: avatar) ?? UIImage())
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 48, height: 48)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.backgroundWB, lineWidth: 2))
                } else {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color.defaultWB)
                        .frame(width: 48, height: 48)
                        .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.backgroundWB, lineWidth: 2))
                        .overlay(
                            Text("\(contact.name.prefix(1))\(contact.surname.prefix(1))")
                                .font(.headline)
                                .foregroundColor(.whiteTextWB)
                        )
                }
                
                if contact.status {
                    Circle()
                        .fill(Color.greenWB)
                        .frame(width: 12, height: 12)
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        .offset(x: 20, y: -20)
                }
            }
            
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
            .padding(.leading, 10)
            
            Spacer()
        }
        .padding(.vertical, 10)
        
    }
    
    
}

#Preview {
    ContactCellView(contact: Contact(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: true, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
