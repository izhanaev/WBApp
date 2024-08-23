//
//  PersonalContactView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI
import UISystem

struct PersonalContactView: View {
    let contact: ContactModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.backgroundWB
                .edgesIgnoringSafeArea(.all)
            VStack {
                PersonalContactAvatarView(contact: contact)
                    .padding(.top, 46)
                PersonalContactInfoView(contact: contact)
                    .padding(.top, 20)
                PersonalContactSocButtonListView()
                    .padding(.top, 40)
                Spacer()
                    .navigationBarBackButtonHidden()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            HStack {
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }) {
                                    NavBarCustomButton(bgColor: .mainTextWB)
                                }
                                NavBarCustomName(titleNavBar: NSLocalizedString("profile", comment: ""), bgColor: .mainTextWB)
                            }
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: PersonalContactEditView()) {
                                Image("Edit")
                                    .renderingMode(.template)
                                    .foregroundStyle(.mainTextWB)
                                    .padding(.trailing, 5)
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    PersonalContactView(contact: ContactModel(id: 1, name: "Анастасия", surname: "Иванова", avatar: URL(string: "https://s3-alpha-sig.figma.com/img/dff3/9826/1c3f407d0c7ff3bc9e52078ef2bbe372?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LUaiVVLEjwv843DzzydwzrdNf-UA8vuFusn83sNlnt3yShNOs5PtE1tsxv1YteD9RTrkLoDr5PCLle7KXxEEAnMa3rRfkW6BpF2qlN51UN395U74sWBDwCzkZx-JDWfKNNlWVYPQCAROecDXuAMzidCwaPkVOuMQiyP2RrwQanIRKLngpxH3DLTkd~TCgiMphmV4RoijrPkqrOZIJtQIb-mx842kjy1exnF7UxCiWPTdNGxqtY5rF5tqwW9CC93DS38dJN3A1Mvvda4E~oCqvy~dPrWhJiD2kLnfVd5rcSv2YBRXt5vV0SEnUn0-5vtnNuwxysqjSqyvB4uLOsLtjQ__"), status: false, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
