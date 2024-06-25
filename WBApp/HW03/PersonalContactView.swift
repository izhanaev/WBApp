//
//  PersonalContactView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct PersonalContactView: View {
    let contact: Contact
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.backgroundWB
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Illustation")
                .navigationBarBackButtonHidden()
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            NavBarCustomButton()
                        }
                        NavBarCustomName(titleNavBar: "Профиль")
                    }
                }
            }
            
        }
    }
}

#Preview {
    PersonalContactView(contact: Contact(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: false, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
