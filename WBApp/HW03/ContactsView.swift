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
        NavigationStack(path: $contactPath) {
            ZStack {
                Color.backgroundWB.ignoresSafeArea()
                VStack {
                    ContactsSearchBarView(contactSearch: $contactSearch)
                    
                        .body.padding(.top, 16)
                        
                        
                    
                    
                    List {
                        
                    }
                    .navigationDestination(for: Contact.self) { contact in
                        PersonalContactView(contact: contact)
                    }
                    .listStyle(PlainListStyle())
                    .background(Color.backgroundWB)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavBarCustomName(titleNavBar: "Контакты")
                                .padding(.leading, 24)
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: NewContactView()) {
                                Image(systemName: "plus").renderingMode(.template)
                                    .foregroundStyle(.backgroundWB)
                                    .bold()
                                    .padding(.trailing, 24)
                            }
                        }
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

#Preview {
    ContactsView()
}
