//
//  PersonalContactAvatarView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 30.06.2024.
//

import SwiftUI

struct PersonalContactAvatarView: View {
    var contact: ContactModel
    
    var body: some View {
        if contact.avatar != nil {
            AsyncImage(url: contact.avatar) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
        } else {
            Image("NonAvatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
        }
    }
    
}

#Preview {
    PersonalContactAvatarView(contact: ContactModel(id: 1, name: "Лиса", surname: "Алиса", avatar: URL(string: "https://s3-alpha-sig.figma.com/img/dff3/9826/1c3f407d0c7ff3bc9e52078ef2bbe372?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LUaiVVLEjwv843DzzydwzrdNf-UA8vuFusn83sNlnt3yShNOs5PtE1tsxv1YteD9RTrkLoDr5PCLle7KXxEEAnMa3rRfkW6BpF2qlN51UN395U74sWBDwCzkZx-JDWfKNNlWVYPQCAROecDXuAMzidCwaPkVOuMQiyP2RrwQanIRKLngpxH3DLTkd~TCgiMphmV4RoijrPkqrOZIJtQIb-mx842kjy1exnF7UxCiWPTdNGxqtY5rF5tqwW9CC93DS38dJN3A1Mvvda4E~oCqvy~dPrWhJiD2kLnfVd5rcSv2YBRXt5vV0SEnUn0-5vtnNuwxysqjSqyvB4uLOsLtjQ__"), status: true, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
