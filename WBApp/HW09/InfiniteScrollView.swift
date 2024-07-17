//
//  InfiniteScrollView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 15.07.2024.
//

import SwiftUI

struct InfiniteScrollView: View {
    @StateObject private var viewModel = EmojiViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.emojis) { emoji in
                    EmojiCellView(emoji: emoji)
                        .onAppear {
                            if emoji == viewModel.emojis.last {
                                viewModel.loadMoreEmojie()
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    InfiniteScrollView()
}
