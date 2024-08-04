//
//  PersonalContactInfoView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 30.06.2024.
//

import SwiftUI

struct PersonalContactInfoView: View {
    var contact: ContactModel
    
    var body: some View {
        VStack {
            Text("\(contact.name) \(contact.surname)")
                .font(.headline)
                .foregroundStyle(.mainTextWB)
            Text(contact.phoneNumber)
                .foregroundStyle(.grayWB)
        }
        .background(Color.backgroundWB)
    }
}

#Preview {
    PersonalContactInfoView(contact: ContactModel(id: 1, name: "Анастасия", surname: "Иванова", avatar: URL(string: "https://s3-alpha-sig.figma.com/img/dff3/9826/1c3f407d0c7ff3bc9e52078ef2bbe372?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LUaiVVLEjwv843DzzydwzrdNf-UA8vuFusn83sNlnt3yShNOs5PtE1tsxv1YteD9RTrkLoDr5PCLle7KXxEEAnMa3rRfkW6BpF2qlN51UN395U74sWBDwCzkZx-JDWfKNNlWVYPQCAROecDXuAMzidCwaPkVOuMQiyP2RrwQanIRKLngpxH3DLTkd~TCgiMphmV4RoijrPkqrOZIJtQIb-mx842kjy1exnF7UxCiWPTdNGxqtY5rF5tqwW9CC93DS38dJN3A1Mvvda4E~oCqvy~dPrWhJiD2kLnfVd5rcSv2YBRXt5vV0SEnUn0-5vtnNuwxysqjSqyvB4uLOsLtjQ__"), status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
