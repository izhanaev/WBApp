//
//  ContactsView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 20.06.2024.
//

import SwiftUI

struct ContactsView: View {
    
    @State var contactSearch = ""
    @State var contactPath = [Contact]()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.backgroundWB
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    ContactsSearchBarView(contactSearch: $contactSearch)
                        .padding(.top, 16)
                    
                    ContactsListView(contactPath: $contactPath)
                        
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavBarCustomName(titleNavBar: "Контакты")
                                .padding(.leading, 12)
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: NewContactView()) {
                                Image(systemName: "plus")
                                    .renderingMode(.template)
                                    .foregroundStyle(.mainTextWB)
                                    .bold()
                                    .padding(.trailing, 12)
                                
                            }
                        }
                    }
                    .navigationDestination(for: Contact.self) { contact in
                        PersonalContactView(contact: contact)
                    }
                    .listStyle(PlainListStyle())
                    .background(Color.backgroundWB)
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

#Preview {
    ContactsView()
}






