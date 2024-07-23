//
//  VerificationView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 17.07.2024.
//

import SwiftUI

struct VerificationView: View {
    @State var contact = VerificationModel()
    @State private var nextView = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.backgroundWB
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    UIApplication.shared.endEditing(true)
                }
            
            VStack {
                Text(NSLocalizedString("enterPhoneNumber", comment: ""))
                    .font(.system(size: 24))
                    .bold()
                    .foregroundStyle(.mainTextWB)
                Text(NSLocalizedString("willSendCode", comment: ""))
                    .padding(.top, 8)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.mainTextWB)
                    .frame(width: 293)
                    .lineSpacing(8)
                VerificationEnterNumberView(contact: contact)
                    .padding(.top, 49)
                Button {
                    nextView = true
                } label: {
                    Text(NSLocalizedString("continue", comment: ""))
                        .font(.system(size: 16))
                        .foregroundStyle(.whiteTextWB)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.defaultWB)
                        .cornerRadius(30)
                }
                .padding(.top, 69)
                .padding(25)
                ClockAnimationView()
            }
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        NavBarCustomButton()
                    }
                    NavBarCustomName(titleNavBar: NSLocalizedString("", comment: ""))
                }
            }
        }
        .navigationDestination(isPresented: $nextView, destination: {
            VerificationCodeView()
        })
    }
}

#Preview {
    VerificationView()
}
