//
//  VerificationEnterNumberView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 17.07.2024.
//

import SwiftUI

struct VerificationEnterNumberView: View {
    @State var contact: VerificationModel
    
    var body: some View {
        HStack(spacing: 8) {
            Image("RuCountryCode")
            TextField("", text: $contact.phoneNumber, prompt: Text("000 000-00-00"))
                .padding(8)
                .font(.system(size: 14))
                .bold()
                .frame(width: 262, height: 36)
                .keyboardType(.numberPad)
                .foregroundStyle(.mainTextWB)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.barBackgroundWB)
                )
                .onChange(of: contact.phoneNumber) { oldValue, newValue in
                    let formatted = formatPhoneNumber(newValue)
                    if contact.phoneNumber != formatted {
                        contact.phoneNumber = formatted
                    }
                }
        }
    }
    
    func formatPhoneNumber(_ number: String) -> String {
        let digits = number.filter { $0.isNumber }
        
        let mask = "XXX XXX-XX-XX"
        var result = ""
        var index = digits.startIndex
        
        for ch in mask where index < digits.endIndex {
            if ch == "X" {
                result.append(digits[index])
                index = digits.index(after: index)
            } else {
                result.append(ch)
            }
        }
        
        return result
    }
    
}

#Preview {
    VerificationEnterNumberView(contact: VerificationModel(phoneNumber: ""))
}

