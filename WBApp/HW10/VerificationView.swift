//
//  VerificationView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 17.07.2024.
//

import SwiftUI

struct VerificationView: View {
    @Binding var contact: VerificationModel
    
    var body: some View {
        ZStack {
            Color.backgroundWB
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(NSLocalizedString("enterPhoneNumber", comment: ""))
                //                .padding(.top, 169)
                    .font(.system(size: 24))
                    .bold()
                    .foregroundStyle(.mainTextWB)
                Text(NSLocalizedString("sendCode", comment: ""))
                    .padding(.top, 8)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.mainTextWB)
                    .frame(width: 293)
                    .lineSpacing(8)
                VerificationEnterNumberView(contact: $contact)
                    .padding(.top, 49)
            }
        }
    }
}

#Preview {
    VerificationView(contact: .constant( VerificationModel(phoneNumber: "000 000-00-00")))
}
