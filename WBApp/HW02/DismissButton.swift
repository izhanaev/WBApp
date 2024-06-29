//
//  DismissButton.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 29.06.2024.
//

import SwiftUI

struct DismissButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text(NSLocalizedString("dismiss", comment: ""))
        }
    }
}

struct DismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissButton()
    }
}



