//
//  ContactAvatarView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 26.06.2024.
//

import SwiftUI

struct ContactAvatarView: View {
    let gradient = Gradient(colors: [.storyGradient1WB, .storyGradient2WB])
    var contact: ContactModel
    
    var body: some View {
        ZStack {
            if contact.story {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 56, height: 56)
                    .overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Color.backgroundWB, lineWidth: 3))
            }
            
            avatarView
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.backgroundWB, lineWidth: 2))
                .padding(contact.story ? 4 : 0)
            
            if contact.status {
                Circle()
                    .fill(Color.greenWB)
                    .frame(width: 12, height: 12)
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .offset(x: 20, y: -20)
            }
        }
        .frame(width: 56, height: 56)
    }
    
    @ViewBuilder
    private var avatarView: some View {
        if let avatarString = contact.avatar, let avatarURL = URL(string: avatarString) {
            AsyncImage(url: avatarURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
        } else {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.defaultWB)
                .overlay(
                    Text("\(contact.name.prefix(1))\(contact.surname.prefix(1))")
                        .font(.headline)
                        .foregroundStyle(.whiteTextWB)
                )
        }
    }
}

#Preview {
    ContactAvatarView(contact: ContactModel(id: 1, name: "Лиса", surname: "Алиса", avatar: "https://s3-alpha-sig.figma.com/img/dff3/9826/1c3f407d0c7ff3bc9e52078ef2bbe372?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LUaiVVLEjwv843DzzydwzrdNf-UA8vuFusn83sNlnt3yShNOs5PtE1tsxv1YteD9RTrkLoDr5PCLle7KXxEEAnMa3rRfkW6BpF2qlN51UN395U74sWBDwCzkZx-JDWfKNNlWVYPQCAROecDXuAMzidCwaPkVOuMQiyP2RrwQanIRKLngpxH3DLTkd~TCgiMphmV4RoijrPkqrOZIJtQIb-mx842kjy1exnF7UxCiWPTdNGxqtY5rF5tqwW9CC93DS38dJN3A1Mvvda4E~oCqvy~dPrWhJiD2kLnfVd5rcSv2YBRXt5vV0SEnUn0-5vtnNuwxysqjSqyvB4uLOsLtjQ__", status: true, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
