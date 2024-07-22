//
//  UIApplication+.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 22.07.2024.
//

import SwiftUI

extension UIApplication {
    func endEditing(_ force: Bool) {
        guard let windowScene = connectedScenes.first as? UIWindowScene else { return }
        windowScene.windows
            .filter { $0.isKeyWindow }
            .first?
            .endEditing(force)
    }
}

