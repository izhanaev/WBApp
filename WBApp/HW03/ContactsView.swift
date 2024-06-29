//
//  ContactsView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 20.06.2024.
//

import SwiftUI

struct ContactsView: View {
    
    @State var contactSearch = ""
    @State var contactPath = [ContactModel]()
    
    var body: some View {
        ZStack {
            Color.backgroundWB.ignoresSafeArea()
            NavigationStack(path: $contactPath) {
                ContactsListView(contactPath: $contactPath)
                    .padding(.top, 12)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavBarCustomName(titleNavBar: NSLocalizedString("contacts", comment: ""))
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: NewContactView()) {
                                Image(systemName: "plus")
                                    .renderingMode(.template)
                                    .foregroundStyle(.mainTextWB)
                                    .bold()
                                    .padding(.trailing, 5)
                            }
                        }
                    }
                    .background(Color.backgroundWB)
                    .navigationDestination(for: ContactModel.self) { contact in
                        PersonalContactView(contact: contact)
                    }
            }
        }
    }
}

#Preview {
    ContactsView()
}
