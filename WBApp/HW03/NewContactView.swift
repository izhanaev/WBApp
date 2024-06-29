//
//  NewContactView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 24.06.2024.
//

import SwiftUI

struct NewContactView: View {
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
                        NavBarCustomName(titleNavBar: NSLocalizedString("newContact", comment: ""))
                    }
                }
            }
            
        }
    }
}

#Preview {
    NewContactView()
}
