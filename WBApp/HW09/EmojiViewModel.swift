//
//  EmojiViewModel.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 17.07.2024.
//

import SwiftUI

class EmojiViewModel: ObservableObject {
    @Published var emojis: [EmojiModel] = []
    
    init() {
        loadMoreEmojie()
    }
    
    func loadMoreEmojie() {
        let newEmojis = (0..<20).map {_ in
            let emojiRange = Array(0x1F300...0x1F3F0)
            let randomEmoji = String(UnicodeScalar(emojiRange.randomElement()!)!)
            return EmojiModel(value: randomEmoji)
        }
        emojis.append(contentsOf: newEmojis)
    }
}
