//
//  PersonalContactView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI
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
                                    NavBarCustomButton()
                                }
                                NavBarCustomName(titleNavBar: NSLocalizedString("profile", comment: ""))
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
    PersonalContactView(contact: ContactModel(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: false, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
