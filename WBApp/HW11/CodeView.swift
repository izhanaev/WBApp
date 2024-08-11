//
//  CodeView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 23.07.2024.
//

import SwiftUI

struct CodeView: View {
    @Binding var contact: VerificationModel
    @FocusState private var isTextFieldFocused: Bool
    @Binding var isFullScreenPresented: Bool
    
    var body: some View {
        ZStack {
            TextField("", text: $contact.code)
                .foregroundStyle(.backgroundWB)
                .tint(.backgroundWB)
                .keyboardType(.numberPad)
                .focused($isTextFieldFocused)
                .onAppear {
                    isTextFieldFocused = true
                }
                .onChange(of: contact.code) { oldValue, newValue in
                    let formatted = formatCode(newValue)
                    if contact.code != formatted {
                        contact.code = formatted
                    }
                    if contact.code == "1111" {
                        isFullScreenPresented = false
                    }
                }
        }
    }
}

#Preview {
    CodeView(contact: .constant(VerificationModel()), isFullScreenPresented: .constant(true))
}
