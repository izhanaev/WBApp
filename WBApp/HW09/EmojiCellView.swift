//
//  EmojiCellView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 17.07.2024.
//

import SwiftUI

struct EmojiCellView: View {
    let emoji: EmojiModel
    
    var body: some View {
        ZStack {
            let layout = Int.random(in: 0...3)
            switch layout {
            case 0:
                GeometryCellView(alignment: .top)
            case 1:
                GeometryCellView(alignment: .bottom)
            case 2:
                GeometryCellView(alignment: .leading)
            case 3:
                GeometryCellView(alignment: .trailing)
            default:
                EmptyView()
            }
            Text(emoji.value)
                .opacity(0.5)
                .font(.system(size: 100))
        }
        .frame(maxWidth: 250)
        .frame(height: 250)
    }
}

#Preview {
    EmojiCellView(emoji: EmojiModel(value: "🪿"))
}
