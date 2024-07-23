//
//  VerificationPromptView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 23.07.2024.
//

import SwiftUI

struct VerificationPromptView: View {
    @Binding var contact: String
    var numberOfCircles: Int
    
    var body: some View {
        HStack(spacing: 44) {
            ForEach(0..<numberOfCircles, id: \.self) { id in
                if id < contact.count {
                    let index = contact.index(contact.startIndex, offsetBy: id)
                    CirclePromtView(digit: String(contact[index]))
                } else {
                   CirclePromtView(digit: "")
                }
            }
        }
    }
}

struct CirclePromtView: View {
    let digit: String
    
    var body: some View {
        ZStack {
            if digit == "" {
                Image(systemName: "circle.fill")
                    .font(.system(size: 32))
                    .foregroundStyle(.grayCircleColorWB)
            }
            Text(digit)
                .foregroundStyle(.mainTextWB)
                .font(.system(size: 32))
        }
        .frame(width: 44, height: 44)
    }
}

#Preview {
    VerificationPromptView(contact: .constant(""), numberOfCircles: 4)
}
