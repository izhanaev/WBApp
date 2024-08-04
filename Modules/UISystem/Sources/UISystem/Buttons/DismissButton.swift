//
//  DismissButton.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 29.06.2024.
//

import SwiftUI

public struct DismissButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    public init() {}

    public var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text(NSLocalizedString("dismiss", comment: ""))
        }
    }
}

#Preview {
    DismissButton()
}



