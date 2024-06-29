//
//  OnboardingButtons.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 29.06.2024.
//

import SwiftUI

struct OnboardingButtons: View {
    @Binding var showModal1: Bool
    @Binding var showModal2: Bool
    @Binding var showModal3: Bool
    
    var body: some View {
        VStack {
            Text(NSLocalizedString("byClickingContinueIAgreeWith", comment: ""))
                .multilineTextAlignment(.center)
                .font(.system(size: 10))
                .foregroundStyle(.grayTextWB)
                .padding(.bottom, 2)
            
            HStack(spacing: 0) {
                Button {
                    showModal1 = true
                } label: {
                    Text(NSLocalizedString("privacyPolicy", comment: ""))
                        .font(.system(size: 10))
                        .foregroundStyle(.defaultWB)
                }
                .sheet(isPresented: $showModal1) {
                    DismissButton()
                }
                
                Text(" и ")
                    .font(.system(size: 10))
                    .foregroundStyle(.grayTextWB)
                
                Button {
                    showModal2 = true
                } label: {
                    Text(NSLocalizedString("termsOfUse", comment: ""))
                        .font(.system(size: 10))
                        .foregroundStyle(.defaultWB)
                }
                .sheet(isPresented: $showModal2) {
                    DismissButton()
                }
            }
            
            Button {
                showModal3 = true
            } label: {
                Text(NSLocalizedString("startChatting", comment: ""))
                    .font(.system(size: 16))
                    .foregroundStyle(.whiteTextWB)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.defaultWB)
                    .cornerRadius(30)
            }
        }
    }
}

struct OnboardingButtons_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButtons(showModal1: .constant(false), showModal2: .constant(false), showModal3: .constant(false))
    }
}
