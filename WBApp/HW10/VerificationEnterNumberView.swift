//
//  VerificationEnterNumberView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 17.07.2024.
//

import SwiftUI

struct VerificationEnterNumberView: View {
    @Binding var contact: VerificationModel
    
    var body: some View {
        HStack(spacing: 8) {
            Image("RuCountryCode")
            TextField("", text: $contact.phoneNumber)
                .padding(8)
                .font(.system(size: 14))
                .bold()
                .frame(width: 262, height: 36)
                .keyboardType(.numberPad)
                .foregroundStyle(.grayNumberWB)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.barBackgroundWB)
                )
            
        }
    }
}

#Preview {
    VerificationEnterNumberView(contact: .constant( VerificationModel(phoneNumber: "000 000-00-00")))
}
