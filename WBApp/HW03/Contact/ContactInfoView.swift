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
                    .foregroundStyle(.grayWB)
            } else {
                Text(lastSeenLocalizedString)
                    .font(.subheadline)
                    .foregroundStyle(.grayWB)
            }
        }
        .background(Color.backgroundWB)
    }
}

#Preview {
    ContactInfoView(contact: ContactModel(id: 1, name: "Анастасия", surname: "Иванова", avatar: URL(string: "https://s3-alpha-sig.figma.com/img/dff3/9826/1c3f407d0c7ff3bc9e52078ef2bbe372?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LUaiVVLEjwv843DzzydwzrdNf-UA8vuFusn83sNlnt3yShNOs5PtE1tsxv1YteD9RTrkLoDr5PCLle7KXxEEAnMa3rRfkW6BpF2qlN51UN395U74sWBDwCzkZx-JDWfKNNlWVYPQCAROecDXuAMzidCwaPkVOuMQiyP2RrwQanIRKLngpxH3DLTkd~TCgiMphmV4RoijrPkqrOZIJtQIb-mx842kjy1exnF7UxCiWPTdNGxqtY5rF5tqwW9CC93DS38dJN3A1Mvvda4E~oCqvy~dPrWhJiD2kLnfVd5rcSv2YBRXt5vV0SEnUn0-5vtnNuwxysqjSqyvB4uLOsLtjQ__"), status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
